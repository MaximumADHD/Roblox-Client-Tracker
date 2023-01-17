local DisplayQRCodeFromMatrix = require(script.DisplayQRCodeFromMatrix)
local DisplayQRCode = require(script.DisplayQRCode)
export type DisplayQRCodeFromMatrixProps = DisplayQRCodeFromMatrix.Props
export type DisplayQRCodeProps = DisplayQRCode.Props

return require(script.qRCodeDisplayAPI)
