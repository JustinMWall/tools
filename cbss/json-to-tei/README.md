# Introduction

This script runs via BaseX (as an XQuery engine), running through a Python wrapper that provides the configuration and file I/O setup.

# Installation

To run the XQueries, install the latest release of [BaseX](https://basex.org/).

Installing Python dependencies relies on [Poetry](https://python-poetry.org/), a Python tool for package dependency management. Please refer to Poetry documentation for guidance on setting up this tool on your system. In particular, it should be set up as a Python CLI application via something like `pipx`.

Once Poetry has been added, it can be used to set up a virtual environment and install the dependencies for the script.

Clone the [Syriaca tools](https://github.com/srophe/tools/) repository, then navigate to it in your terminal (e.g., `cd ~/Documents/GitHub/tools`). Finally, navigate to this folder:

`cd cbss/json-to-tei`

 and run:

`poetry install`

This only needs to be done once, and Poetry will create a virtual environment and install the needed dependencies.

You can verify that it was successful by running

`poetry run python src/json-to-tei.py --help`

This should print the following:

```
usage: CBSS JSON to TEI Transform for Zotero data [-h] [-i INPUT] [-o OUTPUT] [-c CONFIG]

Python wrapper for running JSON to TEI XML tranform, for CBSS bibliography records

options:
  -h, --help            show this help message and exit
  -i INPUT, --input INPUT
                        Path to the input directory or file to transform (default: None)
  -o OUTPUT, --output OUTPUT
                        Path to the output directory where transformed files should be stored (default: None)
  -c CONFIG, --config CONFIG
                        Path to the configuration file (default: config.yaml)
```

# Quickstart

Once the above installation steps are complete, the following steps provide a simple overview for running the transform (full details provided below)

1. Clone the [srophe/zotero2bibl](https://github.com/srophe/zotero2bibl) repository
2. In a terminal window run `basexhttp -c PASSWORD` and set the password to `admin`
3. Navigate in a separate terminal window to the `cbss/json-to-tei` directory
4. Make a copy of the `config.yaml` file in this directory and update the following properties:
  1. The `packages/location` for the `org.syriaca.zotero2tei` package should be the file path to the `zotero2tei.xqm` file in your clone of the srophe/zotero2bibl repository
  2. `zotero_config` should point to a zotero configuration file for the transform, e.g. `zotero-config-cbss.xml` found in the srophe/zotero2bibl repository
5. Run the script via `poetry run python src/json-to-tei.py` with the following flags:
  1. `-i /path/to/input/file/or/folder`. Either a file path to the JSON file, for running on a single file; or a directory, to run on an entire directory
  2. `-o /path/to/output/folder/`. Where the data should be stored once transformed
  3. `-c path/to/configuration/file.yaml`. The path to the configuration file you created and updated in the above steps


# Set up and Usage

Running this XQuery via the Python wrapper leverages BaseX's client/server architecture, so to run this script a local BaseX server must be running.

In a terminal window, run `basexhttp -c PASSWORD` to run a local server. You will be prompted to enter a password, which should be set to `admin`. (N.B.: As the server only runs locally, and is only used to allow the Python client to interact with it, the password does not need to be secret - but the password can be changed/set in the configuration file, as noted below)

In a separate terminal window (e.g., in a VS Code terminal), navigate to the current folder, e.g. `cd cbss/json-to-tei`.

To run the script, use the following command:

`poetry run python src/json-to-tei.py -i /path/to/input/file/or/folder -o /path/to/output/folder/ -c path/to/configuration/file.yaml`

The `-i` flag can be set to a single JSON file, which will run the transform just on that file. Or it can be set to a directory, in which case the transform will run on all the JSON files in that directory.

The script will attempt to execute the XQuery script (the path to which is defined in the configuration file, on which see below). It will log to the user the script configuration, and can be prompted to skip or prematurely end as needed.

# Configuration

The configuration file, passed with the `-c` flag to the Python script, sets up the transform and includes the following options:

## BaseX Session Parameters (`basex_session`)

The `basex_session` parameter includes several sub-parameters that control how the Python wrapper interacts with the locally-running BaseX server. The sample `config.yaml` file provides the default configuration, which should rarely be changed.

## XQuery Package Installation (`packages`)

The `packages` parameter contains can include any number of XQuery dependency packages that will be installed into the BaseX repository (if not present already). See [BaseX Repository Documentation](docs.basex.org/main/Repository) for more information. The following options _must_ be specified for each package:

- `name`, the name to be assigned to the package in BaseX
- `namespace`, the namespace associated with that package, which must match the namespace declared in the XQuery file on importing
- `location`, the URL or local filepath to the XQuery package

The two packages that are required are specified in the sample `config.yaml` file, but their location parameters may need to be updated. The two packages are as follows:
- `org.syriaca.zotero2tei`, namespace "http://syriaca.org/zotero2tei". This is the main module that runs the transform. **It is recommended that you clone this repostiory, [srophe/zotero2bibl](https://github.com/srophe/zotero2bibl) and update the `location` parameter to point to the `zotero2tei.xqm` file location on your local machine**
- `http://www.functx.com` (this can be used unchanged from the sample config file)


## BaseX Commands (`commands`)

The `commands` parameter allows you to run [BaseX commands](https://docs.basex.org/main/Commands) prior to executing XQuery scripts. The sample `config.yaml` file provides the most important ones for the transform, controlling indent and serialization parameters. Other commands may be used. However, it is not recommended to use `REPO` commands here; instead, the `packages` parameter described above should be used to manage the installation of packages.

## Script Configuration (`zotero_config` and `script`)

Finally, the script can be configured using the `zotero_config` and `script` parameters.

`zotero_config` provides a path to an XML document used for additional configurations related to the zot2bibl XQuery module. See below for more details TODO -> or link to documentation elsewhere?

`script` provides the `path` to the XQuery driver script, along with a `description`. These can be copied from the sample `config.yaml` file.


# Zotero Transform Configuration File

The XML file specified in `zotero_config` is a configuration file defined for use in the [srophe/zotero2bibl](https://github.com/srophe/zotero2bibl) XQuery application. The current transformer script makes use of a subset of the parameters available in that file, as specified below. All of the below are children of the root element, `zotero-config`. A sample file in that repository, `zotero-config-cbss.xml`, illustrates how these fields can be used.

- `groupid`: The group library ID where the Zotero data are found, e.g. 4861694 for CBSS
- `last-modified-version`: Unused
- `format`: Should be "json"
- `data-dir`: The local file path to the existing XML records for CBSS data (i.e., on your local clone of `syriaca-data`)
- `base-uri`: The URI base for your project, e.g. `http://syriaca.org/cbss/`
- `id-pattern`: Should be `zotero`
- `pub-lang`: Should be `extra`, for CBSS. This field controls whether the records' `textLang` element is populated using the JSON `language` field, or is set by parameters in the `extra` field. As CBSS has opted to use the extra field, and reserve the JSON language field solely for setting capitalization rules for the formatted bibliographies, this parameter should be set to extra.
- Several parameters are used to provide project-level metadata in the `teiHeader`. These are as follows (and should be set to what is expected in the TEI output):
  - `sponsor`
  - `availability`
- `seriesStmt`: Essentially like the above, but with the inclusion of a `@collection` attribute. This attribute controls which records receive which series based on their membership in a collection. For example, in CBSS only those belonging to "P4VVZ7P6" have been reviewed and approved by the CBSS editorial team for inclusion, whereas many additional records are included in the library since they serve as works cited for other Syriaca entities. The series statement whose `@collection` attribute has a value of "default" is assigned to those records.
- `relation`: One or more relation elements are specified, which control how several of the URIs encoded in the `extra` field should be handled. These elements should include the necessary attrributes to define the relation, including empty `active/passive` pairs or an empty `mutual` attribute (to be populated by the transform). As well, they include an `@extra` attribute, which includes the corresponding extra field key that is used in the JSON data. These keys will be matched to create the relation elements based on their corresponding value in the extra field.
  