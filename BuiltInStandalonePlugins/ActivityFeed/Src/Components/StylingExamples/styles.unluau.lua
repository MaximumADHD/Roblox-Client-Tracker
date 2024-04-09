-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Parent.Packages.Framework).Styling.createStyleRule
local var1 = UDim2.new(0, 200, 0, 50)
local var2 = UDim2.new(0, 50, 0, 50)
local var139 = {}
var139.Size = UDim2.new(1, 0, 1, 0)
local var149 = {}
var149.Size = UDim2.new(1, 0, 1, 0)
var149.AutomaticSize = Enum.AutomaticSize.XY
var149.TextXAlignment = Enum.TextXAlignment.Center
var149.TextYAlignment = Enum.TextYAlignment.Center
var149.BackgroundTransparency = 1
var149.TextSize = 14
local var161 = var0(">> TextLabel", var149)
local var164 = {}
var164.Size = var1
var164.BackgroundColor3 = "$BackgroundDefault"
local var169 = {}
var169.Size = var1
var169.BackgroundColor3 = "$BackgroundPaper"
local var174 = {}
var174.Size = var1
var174.BackgroundColor3 = "$ForegroundMain"
local var179 = {}
var179.Size = var1
var179.BackgroundColor3 = "$ForegroundMuted"
local var184 = {}
var184.Size = var1
var184.BackgroundColor3 = "$ForegroundContrast"
local var186 = var0("> #ForegroundContrast", var184)
local var189 = {}
var189.Size = var1
var189.TextColor3 = "$TextPrimary"
local var194 = {}
var194.Size = var1
var194.TextColor3 = "$TextSecondary"
local var199 = {}
var199.Size = var1
var199.TextColor3 = "$TextContrast"
local var204 = {}
var204.Size = var1
var204.TextColor3 = "$TextLink"
local var209 = {}
var209.TextColor3 = "$TextLink"
local var211 = var0(":hover", var209)
local var212 = var0("> #TextLink", var204, {})
local var215 = {}
var215.Size = var1
var215.TextColor3 = "$TextDisabled"
local var217 = var0("> #TextDisabled", var215)
local var220 = {}
var220.Size = var1
var220.TextColor3 = "$TextError"
local var222 = var0("> #TextError", var220)
local var225 = {}
var225.Size = var1
var225.TextColor3 = "$TextSuccess"
local var227 = var0("> #TextSuccess", var225)
local var230 = {}
var230.Size = var1
var230.TextColor3 = "$TextWarning"
local var232 = var0("> #TextWarning", var230)
local var235 = {}
var235.Size = var1
var235.BackgroundColor3 = "$ErrorMain"
local var237 = var0("> #ErrorMain", var235)
local var240 = {}
var240.Size = var1
var240.BackgroundColor3 = "$SuccessMain"
local var242 = var0("> #SuccessMain", var240)
var161 = var0
local var244 = {}
var244.Size = var1
var244.BackgroundColor3 = "$WarningMain"
local var246 = var161("> #WarningMain", var244)
local var249 = {}
var249.Size = var1
var249.BackgroundColor3 = "$ActionEnabled"
var186 = var0
local var253 = {}
var253.BackgroundColor3 = "$ActionHover"
local var255 = var186(":hover", var253)
local var259 = {}
var259.Size = var1
var259.BackgroundColor3 = "$ActionEnabled"
local var264 = {}
var264.Size = var1
var264.BackgroundColor3 = "$ActionSelected"
local var269 = {}
var269.Size = var1
var269.BackgroundColor3 = "$ActionActivated"
local var274 = {}
var274.Size = var1
var274.BackgroundColor3 = "$ActionEnabled"
var274.BorderColor3 = "$ActionFocusBorder"
local var280 = {}
var280.Size = var1
var280.BackgroundColor3 = "$PrimaryMain"
local var285 = {}
var285.Size = var1
var285.BackgroundColor3 = "$PrimaryMain"
var222 = var0
local var289 = {}
var289.BackgroundColor3 = "$PrimaryHoverBackground"
local var291 = var222(":hover", var289)
local var295 = {}
var295.Size = var1
var295.BackgroundColor3 = "$SecondaryMain"
local var300 = {}
var300.Size = var1
var300.BackgroundColor3 = "$SecondaryMuted"
local var37 = var0("> #SecondaryMuted", var300)
local var305 = {}
var305.Size = var1
var305.BackgroundColor3 = "$SecondaryContrast"
local var39 = var0("> #SecondaryContrast", var305)
local var310 = {}
var310.Size = var1
var310.BackgroundColor3 = "$SecondaryMain"
var242 = var0
local var314 = {}
var314.BackgroundColor3 = "$SecondaryHoverBackground"
local var316 = var242(":hover", var314)
local var42 = var0("> #SecondaryHoverBackground", var310, {})
local var320 = {}
var320.Size = var1
var320.BackgroundColor3 = "$SecondaryMain"
var320.BorderColor3 = "$SecondaryHoverOutlineBorder"
local var44 = var0("> #SecondaryHoverOutlineBorder", var320)
local var326 = {}
var326.Size = var1
var326.BackgroundColor3 = "$SecondaryMain"
var326.BorderColor3 = "$SecondaryRestingOutlineBorder"
local var46 = var0("> #SecondaryRestingOutlineBorder", var326)
local var332 = {}
var332.Size = var1
var332.BackgroundColor3 = "$FilledInputBackground"
local var47 = var0("> #FilledInputBackground", var332)
local var337 = {}
var337.Size = var1
var337.BackgroundColor3 = "$Divider"
local var48 = var0("> #Divider", var337)
var246 = var0
local var341 = {}
var341.Size = var2
var341.Image = "$CheckboxUncheckedImage"
local var50 = var246("> #CheckboxUncheckedImage", var341)
local var346 = {}
var346.Size = var2
var346.Image = "$CheckboxCheckedImage"
local var52 = var0("> #CheckboxCheckedImage", var346)
local var351 = {}
var351.Size = var2
var351.Image = "$CheckboxIndeterminateImage"
local var53 = var0("> #CheckboxIndeterminateImage", var351)
local var356 = {}
var356.Size = var2
var356.Image = "$CheckboxDisabledImage"
local var54 = var0("> #CheckboxDisabledImage", var356)
return var0(".Component-TokenExamples", var139, { 
   var0(">> TextLabel", var149), 
   var0("> #BackgroundDefault", var164), 
   var0("> #BackgroundPaper", var169), 
   var0("> #ForegroundMain", var174), 
   var0("> #ForegroundMuted", var179), 
   var0("> #ForegroundContrast", var184), 
   var0("> #TextPrimary", var189), 
   var0("> #TextSecondary", var194), 
   var0("> #TextContrast", var199), 
   var161("> #WarningMain", var244), 
   var0("> #ActionHover", var249, {}), 
   var0("> #ActionEnabled", var259), 
   var0("> #ActionSelected", var264), 
   var0("> #ActionActivated", var269), 
   var0("> #ActionFocusBorder", var274), 
   var0("> #PrimaryMain", var280), 
   var0("> #PrimaryHoverBackground", var285, {}), 
   var0("> #SecondaryMain", var295)
})
