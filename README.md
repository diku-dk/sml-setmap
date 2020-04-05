# sml-setmap [![Build Status](https://travis-ci.org/diku-dk/sml-setmap.svg?branch=master)](https://travis-ci.org/diku-dk/sml-setmap)

Standard ML library for sets and maps.

## Overview of MLB files

### Sets

- `lib/github.com/diku-dk/sml-setmap/set.mlb`:

  - **signature** `SET_BASE`
  - **signature** `SET_EQ`
  - **signature** `SET_ORD`
  - **structure** `SetEq : SET_EQ`

- `lib/github.com/diku-dk/sml-setmap/mono_set.mlb`:

  - **signature** `MONO_SET`
  - **functor** `OrderSet(type t val compare: t*t->order)`

- `lib/github.com/diku-dk/sml-setmap/string_set.mlb`:

  - **signature** `MONO_SET`
  - **structure** `StringSet : MONO_SET where type elem = string`

- `lib/github.com/diku-dk/sml-setmap/int_set.mlb`:

  - **signature** `MONO_SET`
  - **structure** `IntSet : MONO_SET where type elem = int`

- `lib/github.com/diku-dk/sml-setmap/word_set.mlb`:

  - **signature** `MONO_SET`
  - **structure** `WordSet : MONO_SET where type elem = word`

### Maps

- `lib/github.com/diku-dk/sml-setmap/mono_map.mlb`:

  - **signature** `MONO_MAP`
  - **functor** `OrderMap(type t val compare: t*t->order)`

- `lib/github.com/diku-dk/sml-setmap/string_map.mlb`:

  - **signature** `MONO_MAP`
  - **structure** `StringMap : MONO_MAP where type dom = string`

- `lib/github.com/diku-dk/sml-setmap/int_map.mlb`:

  - **signature** `MONO_MAP`
  - **structure** `IntMap : MONO_MAP where type dom = int`



## Use of the package

This library is set up to work well with the SML package manager
[smlpkg]().  To use the package, in the root of your project
directory, execute the command:

```
$ smlpkg add github.com/diku-dk/sml-setmap
```

This command will add a _requirement_ (a line) to the `sml.pkg` file in your
project directory (and create the file, if there is no file `sml.pkg`
already).

To download the library into the directory
`lib/github.com/diku-dk/sml-setmap`, execute the command:

```
$ smlpkg sync
```

You can now reference the relevant `mlb`-files using relative paths from
within your project's `mlb`-files.

Notice that you can choose either to treat the downloaded package as
part of your own project sources (vendoring) or you can add the
`sml.pkg` file to your project sources and make the `smlpkg sync`
command part of your build process.
