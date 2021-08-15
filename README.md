# parcel-transformer-graphviz

A [Parcel] transformer that turns [Graphviz] files into SVGs.

## Installation

Add the library as a dependency:

```shell
npm install --save-dev parcel-transformer-graphviz
```

Add the library to your `.parcelrc` file:

```json
{
  "extends": "@parcel/config-default",
  "transformers": {
    "*.{dot,gv}": ["parcel-transformer-graphviz"],
    "*.svg": ["@parcel/transformer-raw"]
  }
}
```

[graphviz]: https://graphviz.org/
[parcel]: https://parceljs.org/
