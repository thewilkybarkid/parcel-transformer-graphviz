const { Transformer } = require('@parcel/plugin')
const { graphviz } = require('@hpcc-js/wasm')

exports.default = new Transformer({
  async transform({ asset }) {
    asset.bundleBehavior = 'isolated'

    const input = await asset.getCode()
    const output = await graphviz.layout(input, 'svg')

    asset.type = 'svg'
    asset.setCode(output)

    return [asset]
  },
})
