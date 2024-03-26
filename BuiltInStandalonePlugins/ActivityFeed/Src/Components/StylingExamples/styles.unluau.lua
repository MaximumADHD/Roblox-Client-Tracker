-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Parent.Packages.Framework).Styling.createStyleRule
local var1 = UDim2.new(0, 200, 0, 50)
local var2 = UDim2.new(0, 50, 0, 50)
local var133 = {}
var133.Size = UDim2.new(1, 0, 1, 0)
local var143 = {}
var143.Size = UDim2.new(1, 0, 1, 0)
var143.AutomaticSize = Enum.AutomaticSize.XY
var143.TextXAlignment = Enum.TextXAlignment.Center
var143.TextYAlignment = Enum.TextYAlignment.Center
var143.BackgroundTransparency = 1
var143.TextSize = 14
local var155 = var0(">> TextLabel", var143)
local var158 = {}
var158.Size = var1
var158.BackgroundColor3 = "$BackgroundDefault"
local var163 = {}
var163.Size = var1
var163.BackgroundColor3 = "$BackgroundPaper"
local var168 = {}
var168.Size = var1
var168.BackgroundColor3 = "$ForegroundMain"
local var173 = {}
var173.Size = var1
var173.BackgroundColor3 = "$ForegroundMuted"
local var178 = {}
var178.Size = var1
var178.BackgroundColor3 = "$ForegroundContrast"
local var180 = var0("> #ForegroundContrast", var178)
local var183 = {}
var183.Size = var1
var183.TextColor3 = "$TextPrimary"
local var188 = {}
var188.Size = var1
var188.TextColor3 = "$TextSecondary"
local var193 = {}
var193.Size = var1
var193.TextColor3 = "$TextContrast"
local var198 = {}
var198.Size = var1
var198.TextColor3 = "$TextLink"
local var203 = {}
var203.TextColor3 = "$TextLink"
local var205 = var0(":hover", var203)
local var206 = var0("> #TextLink", var198, {})
local var209 = {}
var209.Size = var1
var209.TextColor3 = "$TextDisabled"
local var211 = var0("> #TextDisabled", var209)
local var214 = {}
var214.Size = var1
var214.TextColor3 = "$TextError"
local var216 = var0("> #TextError", var214)
local var219 = {}
var219.Size = var1
var219.TextColor3 = "$TextSuccess"
local var221 = var0("> #TextSuccess", var219)
local var224 = {}
var224.Size = var1
var224.TextColor3 = "$TextWarning"
local var226 = var0("> #TextWarning", var224)
local var229 = {}
var229.Size = var1
var229.BackgroundColor3 = "$ErrorMain"
local var231 = var0("> #ErrorMain", var229)
local var234 = {}
var234.Size = var1
var234.BackgroundColor3 = "$SuccessMain"
local var236 = var0("> #SuccessMain", var234)
var155 = var0
local var238 = {}
var238.Size = var1
var238.BackgroundColor3 = "$WarningMain"
local var240 = var155("> #WarningMain", var238)
local var243 = {}
var243.Size = var1
var243.BackgroundColor3 = "$ActionEnabled"
var180 = var0
local var247 = {}
var247.BackgroundColor3 = "$ActionHover"
local var249 = var180(":hover", var247)
local var253 = {}
var253.Size = var1
var253.BackgroundColor3 = "$ActionEnabled"
local var258 = {}
var258.Size = var1
var258.BackgroundColor3 = "$ActionSelected"
local var263 = {}
var263.Size = var1
var263.BackgroundColor3 = "$ActionActivated"
local var268 = {}
var268.Size = var1
var268.BackgroundColor3 = "$ActionEnabled"
var268.BorderColor3 = "$ActionFocusBorder"
local var274 = {}
var274.Size = var1
var274.BackgroundColor3 = "$PrimaryMain"
local var279 = {}
var279.Size = var1
var279.BackgroundColor3 = "$PrimaryMain"
var216 = var0
local var283 = {}
var283.BackgroundColor3 = "$PrimaryHoverBackground"
local var285 = var216(":hover", var283)
local var289 = {}
var289.Size = var1
var289.BackgroundColor3 = "$SecondaryMain"
local var294 = {}
var294.Size = var1
var294.BackgroundColor3 = "$SecondaryMuted"
local var37 = var0("> #SecondaryMuted", var294)
local var299 = {}
var299.Size = var1
var299.BackgroundColor3 = "$SecondaryContrast"
local var39 = var0("> #SecondaryContrast", var299)
local var304 = {}
var304.Size = var1
var304.BackgroundColor3 = "$SecondaryMain"
var236 = var0
local var308 = {}
var308.BackgroundColor3 = "$SecondaryHoverBackground"
local var310 = var236(":hover", var308)
local var42 = var0("> #SecondaryHoverBackground", var304, {})
local var314 = {}
var314.Size = var1
var314.BackgroundColor3 = "$SecondaryMain"
var314.BorderColor3 = "$SecondaryHoverOutlineBorder"
local var44 = var0("> #SecondaryHoverOutlineBorder", var314)
local var320 = {}
var320.Size = var1
var320.BackgroundColor3 = "$SecondaryMain"
var320.BorderColor3 = "$SecondaryRestingOutlineBorder"
local var46 = var0("> #SecondaryRestingOutlineBorder", var320)
local var326 = {}
var326.Size = var1
var326.BackgroundColor3 = "$FilledInputBackground"
local var47 = var0("> #FilledInputBackground", var326)
local var331 = {}
var331.Size = var1
var331.BackgroundColor3 = "$Divider"
local var48 = var0("> #Divider", var331)
var240 = var0
local var335 = {}
var335.Size = var2
var335.Image = "$CheckboxUncheckedImage"
local var50 = var240("> #CheckboxUncheckedImage", var335)
local var340 = {}
var340.Size = var2
var340.Image = "$CheckboxCheckedImage"
local var52 = var0("> #CheckboxCheckedImage", var340)
local var345 = {}
var345.Size = var2
var345.Image = "$CheckboxIndeterminateImage"
local var53 = var0("> #CheckboxIndeterminateImage", var345)
local var350 = {}
var350.Size = var2
var350.Image = "$CheckboxDisabledImage"
local var54 = var0("> #CheckboxDisabledImage", var350)
return var0(".Component-TokenExamples", var133, { 
   var0(">> TextLabel", var143), 
   var0("> #BackgroundDefault", var158), 
   var0("> #BackgroundPaper", var163), 
   var0("> #ForegroundMain", var168), 
   var0("> #ForegroundMuted", var173), 
   var0("> #ForegroundContrast", var178), 
   var0("> #TextPrimary", var183), 
   var0("> #TextSecondary", var188), 
   var0("> #TextContrast", var193), 
   var155("> #WarningMain", var238), 
   var0("> #ActionHover", var243, {}), 
   var0("> #ActionEnabled", var253), 
   var0("> #ActionSelected", var258), 
   var0("> #ActionActivated", var263), 
   var0("> #ActionFocusBorder", var268), 
   var0("> #PrimaryMain", var274), 
   var0("> #PrimaryHoverBackground", var279, {}), 
   var0("> #SecondaryMain", var289)
})
