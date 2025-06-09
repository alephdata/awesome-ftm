# ✨ Awesome FollowTheMoney ✨

**Collection of tools and projects in the FollowTheMoney ecosystem**

!!! info "Introduction"
    Have a look at the [introduction](https://followthemoney.tech/docs/) from the official docs if you are not familiar with FollowTheMoney as a data model, its concepts and the base python implementation. As well find below a list of introductory material.

Over the past years, a lot of projects have been built on top of [FollowTheMoney](https://followthemoney.tech) by a wide range of individual contributors and organizations. Many libraries are part of the ecosystem that can be used standalone or in application contexts to deal with all kinds of subjects regarding FollowTheMoney data, such as scraping, transforming or cleaning _Entites_, store them in various database backends, search and query data, and built complete full-stack applications for it.

If you want your project on this list, just do a pull request to this repository: [alephdata/awesome-ftm](https://github.com/alephdata/awesome-ftm)

## Introductory material

- [FollowTheMoney documentation](https://followthemoney.tech)
- [Intro workshop (2024)](https://pad.investigativedata.org/s/0qKuBEcsM#)
- [Getting started with projects using the FollowTheMoney toolkit](https://github.com/dataresearchcenter/ftm-startkit)

## Full stack applications

These applications are probably the reason why you ended up here. Most of the smaller packages below are part of their full stack.

- [Aleph](https://github.com/alephdata/aleph) - Original core project, now discontinued
- [OpenAleph](https://openaleph.org) – Search through large documents and structured data
- [Aleph Pro](https://www.occrp.org/en/announcement/occrp-announces-a-new-chapter-for-its-investigative-data-platform-aleph-pro) - Closed-source, golang clone of Aleph

## Build data and datasets

Tools and frameworks for _creating_ FollowTheMoney data with scrapers or custom applications.

- [followthemoney](https://github.com/alephdata/followthemoney) - core ontology and data validation system, includes CSV/SQL to FtM mapper.
- [memorious](https://github.com/alephdata/memorious) – light-weight web scraping toolkit for scrapers that collect structured or un-structured data
    * A more recent [fork of memorious](https://docs.investigraph.dev/lib/memorious/)
- [zavod](https://zavod.opensanctions.org/) – Data processing framework as part of OpenSanctions
- [investigraph](https://docs.investigraph.dev/) – Framework to create FollowTheMoney data
- [ingest-file](https://github.com/alephdata/ingest-file) – Create document graphs out of source data for Aleph applications

## Clean data

Tools and frameworks for _cleaning_ and _validating_ FollowTheMoney data.

- [rigour](https://opensanctions.github.io/rigour/) – Data cleaning and validation functions for processing various types of text emanating and describing the business world, base to `followthemoney`.
- [countrynames](https://github.com/opensanctions/countrynames/) – This library helps with the mapping of country names to their respective two or three letter codes
- [prefixdate](https://github.com/pudo/prefixdate) – a helper class to parse dates with varied degrees of precision
- [datapatch](https://github.com/opensanctions/datapatch) – A Python library for defining rule-based overrides on messy data
- [normality](https://github.com/pudo/normality/) – a Python micro-package that contains a small set of text normalization functions for easier re-use
- [countrytagger](https://github.com/alephdata/countrytagger) - extract country name references from text

## Analyze data

Tools and frameworks for _analyzing_ FollowTheMoney data, for example transcribing [Audio](https://followthemoney.tech/explorer/schemata/Audio/) and [Video](https://followthemoney.tech/explorer/schemata/Audio/) entities, detecting languages or Named Entity Extraction (NER).

- [ftm-analyze](https://docs.investigraph.dev/lib/ftm-analyze/) – The standalone ftm analyzer formerly included in `ingest-file` for all kinds of processing
- [ftm-geocode](https://docs.investigraph.dev/lib/ftm-geocode/) – Batch parse and geocode addresses from FollowTheMoney entities
- [ftm-transcribe](https://github.com/openaleph/ftm-transcribe) – Extract text from Video and Audio
- [followthemoney-compare](https://github.com/alephdata/followthemoney-compare) – tools necessary to pre-process and train models to power a cross-reference system for FollowTheMoney data
- [juditha](https://github.com/dataresearchcenter/juditha) – Compare and resolve NER results to actual known FtM Entities
- [ingest-file.analysis](https://github.com/alephdata/ingest-file) – Part of the document ingestion is a comprehensive _analysis_ phase used for Aleph applications

## Store entity data

Tools and applications for _storing and retrieving_ FollowTheMoney data such as databases, key-value stores or document archives. Contains as well tools for storing related data (such as images for Entities).

- [followthemoney-store](https://github.com/alephdata/followthemoney-store) – Sql-backed store for [Entity fragments](https://followthemoney.tech/docs/fragments/)
- [nomenklatura](https://github.com/opensanctions/nomenklatura) – Store entity data as _statements_. This package includes implementations for different backends (memory, redis, kvrocks, sql)
- [ftmq](https://docs.investigraph.dev/lib/ftmq/) – More advanced querying logic on top off the `nomenklatura` store implementations
- [bahamut](https://github.com/opensanctions/bahamut) – Next generation FollowTheMoney statement data server with built-in entity resolution support. Written in Java.
- [FollowTheMoney Data Lake](https://openaleph.org/docs/lib/ftm-datalake/rfc/) – Scalable storage for structured data and document archives (upcoming)
- [ftm-columnstore](https://github.com/dataresearchcenter/ftm-columnstore) – [Clickhouse](https://clickhouse.com/)-backed implementation of a `nomenklatura` statement store
- [servicelayer](https://github.com/alephdata/servicelayer/) – Document archive for _legacy Aleph_ and [OpenAleph](https://openaleph.org)
- [leakrfc](https://docs.investigraph.dev/lib/leakrfc/) – data standard and archive storage for leaked data, private and public document collections, will become `ftm-datalake` (see above)
- [ftm-assets](https://github.com/dataresearchcenter/ftm-assets/) – Assets (image) resolver and storage for FollowTheMoney data

## IO / Streaming

Tools and helpers for streaming FollowTheMoney data between stores and systems.

- [alephclient](https://docs.aleph.occrp.org/developers/how-to/data/install-alephclient/) – Getting data in and out of Aleph with its API
- [openaleph-client](https://openaleph.org/docs/user-guide/104/) – `alephclient` fork for OpenAleph, adds more pre-processing capabilities.
- [ftmq.io](https://docs.investigraph.dev/lib/ftmq/reference/io/) – Generic helpers for read and write FollowTheMoney data from and to various local and remote locations

## API / Search

Building blocks for serving and searching FollowTheMoney datasets for web applications.

- [yente](https://www.opensanctions.org/docs/yente/) – API for OpenSanctions with support for entity search and bulk matching of data collections. Supports Reconciliation API specification.
- [ftmq-api](https://docs.investigraph.dev/lib/ftmq-api/) – Expose statement stores (by `ftmq` / `nomenklatura`) to a read-only [FastAPI](https://fastapi.tiangolo.com/)
- [ftmq-search](https://github.com/dataresearchcenter/ftmq-search) – Search experiments for FollowTheMoney data with different backends (Sqlite FTS, tantivy, elasticsearch)

## Projects / Use cases

Data exploration projects that make use off the FollowTheMoney stack described above. Click on a project detail page to learn more on how these projects are using FollowTheMoney (you will find the actual links to the projects there as well).

- [OpenSanctions](https://opensanctions.org) – OpenSanctions helps investigators find leads, allows companies to manage risk and enables technologists to build data-driven products
- [OpenSecurityData.eu](https://opensecuritydata.eu/) – Find companies, organizations or projects that receive European Union security funding
- [Farmsubsidy.org](https://farmsubsidy.org) – Collecting and processing detailed data relating to payments and recipients of farm subsidies in every EU member state
- [FollowTheGrant](https://followthegrant.org) – Data and investigations about potential conflicts of interest within academic research
- [EveryPolitician](https://everypolitician.org) – Political exposed persons (PEPs), re-launching H2 2025.
- [CORRECTIV Court Donations](https://spendengerichte.correctiv.org) – Who receives court donations in germany?
- [YouControl.World](https://youcontrol.world/data-coverage) - KYB commercial platform based on Aleph
- [DPRK Reports](https://dprk-reports.org/) - Graph-building data project working on North Korean sanctions evasion
- [reveng.ee](https://reveng.ee/) - Activist portal from Ukraine, lots of searchable Russian data.

## Data libraries / catalogs

Many FollowTheMoney _Entities_ form a _Dataset_, many datasets form a _Catalog_ (some prefer to call it _Library_).

Learn more: [Dataset / Catalog metadata](https://www.opensanctions.org/docs/metadata/)

- [OpenSanctions Datasets](https://opensanctions.org/datasets)
- [DARC Library](https://dataresearchcenter.org/library)
- [investigraph.eu](https://investigraph.eu)

## Discontinued/legacy tools

These libraries have been discontinued or merged with others:

- [Aleph Data Desktop](https://github.com/alephdata/datadesktop) - desktop application for drawing investigative network diagrams.
- [pantomime](https://github.com/alephdata/pantomime) – parsing and normalisation of internet MIME types in Python (discontinued, now in `rigour.mime`)
- [fingerprints](https://github.com/opensanctions/fingerprints) – Name handling utilities for person and organisation names (discontinued, now in `rigour.names`)
- [languagecodes](https://github.com/alephdata/languagecodes) – normalise the ISO 639 codes used to describe languages from two-letter codes to three letters, and vice versa (discontinued, now in `rigour.langs`)
- [addressformatting](https://github.com/pudo-attic/addressformatting) – address formatter that can format addresses in multiple formats that are common in different countries (discontinued, now in `rigour.addresses`)
