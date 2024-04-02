-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Parent.Packages.Framework).Styling.createStyleRule
local var1 = UDim2.new(0, 200, 0, 50)
local var2 = UDim2.new(0, 50, 0, 50)
local var134 = {}
var134.Size = UDim2.new(1, 0, 1, 0)
local var144 = {}
var144.Size = UDim2.new(1, 0, 1, 0)
var144.AutomaticSize = Enum.AutomaticSize.XY
var144.TextXAlignment = Enum.TextXAlignment.Center
var144.TextYAlignment = Enum.TextYAlignment.Center
var144.BackgroundTransparency = 1
var144.TextSize = 14
local var156 = var0(">> TextLabel", var144)
local var159 = {}
var159.Size = var1
var159.BackgroundColor3 = "$BackgroundDefault"
local var164 = {}
var164.Size = var1
var164.BackgroundColor3 = "$BackgroundPaper"
local var169 = {}
var169.Size = var1
var169.BackgroundColor3 = "$ForegroundMain"
local var174 = {}
var174.Size = var1
var174.BackgroundColor3 = "$ForegroundMuted"
local var179 = {}
var179.Size = var1
var179.BackgroundColor3 = "$ForegroundContrast"
local var181 = var0("> #ForegroundContrast", var179)
local var184 = {}
var184.Size = var1
var184.TextColor3 = "$TextPrimary"
local var189 = {}
var189.Size = var1
var189.TextColor3 = "$TextSecondary"
local var194 = {}
var194.Size = var1
var194.TextColor3 = "$TextContrast"
local var199 = {}
var199.Size = var1
var199.TextColor3 = "$TextLink"
local var204 = {}
var204.TextColor3 = "$TextLink"
local var206 = var0(":hover", var204)
local var207 = var0("> #TextLink", var199, {})
local var210 = {}
var210.Size = var1
var210.TextColor3 = "$TextDisabled"
local var212 = var0("> #TextDisabled", var210)
local var215 = {}
var215.Size = var1
var215.TextColor3 = "$TextError"
local var217 = var0("> #TextError", var215)
local var220 = {}
var220.Size = var1
var220.TextColor3 = "$TextSuccess"
local var222 = var0("> #TextSuccess", var220)
local var225 = {}
var225.Size = var1
var225.TextColor3 = "$TextWarning"
local var227 = var0("> #TextWarning", var225)
local var230 = {}
var230.Size = var1
var230.BackgroundColor3 = "$ErrorMain"
local var232 = var0("> #ErrorMain", var230)
local var235 = {}
var235.Size = var1
var235.BackgroundColor3 = "$SuccessMain"
local var237 = var0("> #SuccessMain", var235)
var156 = var0
local var239 = {}
var239.Size = var1
var239.BackgroundColor3 = "$WarningMain"
local var241 = var156("> #WarningMain", var239)
local var244 = {}
var244.Size = var1
var244.BackgroundColor3 = "$ActionEnabled"
var181 = var0
local var248 = {}
var248.BackgroundColor3 = "$ActionHover"
local var250 = var181(":hover", var248)
local var254 = {}
var254.Size = var1
var254.BackgroundColor3 = "$ActionEnabled"
local var259 = {}
var259.Size = var1
var259.BackgroundColor3 = "$ActionSelected"
local var264 = {}
var264.Size = var1
var264.BackgroundColor3 = "$ActionActivated"
local var269 = {}
var269.Size = var1
var269.BackgroundColor3 = "$ActionEnabled"
var269.BorderColor3 = "$ActionFocusBorder"
local var275 = {}
var275.Size = var1
var275.BackgroundColor3 = "$PrimaryMain"
local var280 = {}
var280.Size = var1
var280.BackgroundColor3 = "$PrimaryMain"
var217 = var0
local var284 = {}
var284.BackgroundColor3 = "$PrimaryHoverBackground"
local var286 = var217(":hover", var284)
local var290 = {}
var290.Size = var1
var290.BackgroundColor3 = "$SecondaryMain"
local var295 = {}
var295.Size = var1
var295.BackgroundColor3 = "$SecondaryMuted"
local var37 = var0("> #SecondaryMuted", var295)
local var300 = {}
var300.Size = var1
var300.BackgroundColor3 = "$SecondaryContrast"
local var39 = var0("> #SecondaryContrast", var300)
local var305 = {}
var305.Size = var1
var305.BackgroundColor3 = "$SecondaryMain"
var237 = var0
local var309 = {}
var309.BackgroundColor3 = "$SecondaryHoverBackground"
local var311 = var237(":hover", var309)
local var42 = var0("> #SecondaryHoverBackground", var305, {})
local var315 = {}
var315.Size = var1
var315.BackgroundColor3 = "$SecondaryMain"
var315.BorderColor3 = "$SecondaryHoverOutlineBorder"
local var44 = var0("> #SecondaryHoverOutlineBorder", var315)
local var321 = {}
var321.Size = var1
var321.BackgroundColor3 = "$SecondaryMain"
var321.BorderColor3 = "$SecondaryRestingOutlineBorder"
local var46 = var0("> #SecondaryRestingOutlineBorder", var321)
local var327 = {}
var327.Size = var1
var327.BackgroundColor3 = "$FilledInputBackground"
local var47 = var0("> #FilledInputBackground", var327)
local var332 = {}
var332.Size = var1
var332.BackgroundColor3 = "$Divider"
local var48 = var0("> #Divider", var332)
var241 = var0
local var336 = {}
var336.Size = var2
var336.Image = "$CheckboxUncheckedImage"
local var50 = var241("> #CheckboxUncheckedImage", var336)
local var341 = {}
var341.Size = var2
var341.Image = "$CheckboxCheckedImage"
local var52 = var0("> #CheckboxCheckedImage", var341)
local var346 = {}
var346.Size = var2
var346.Image = "$CheckboxIndeterminateImage"
local var53 = var0("> #CheckboxIndeterminateImage", var346)
local var351 = {}
var351.Size = var2
var351.Image = "$CheckboxDisabledImage"
local var54 = var0("> #CheckboxDisabledImage", var351)
return var0(".Component-TokenExamples", var134, { 
   var0(">> TextLabel", var144), 
   var0("> #BackgroundDefault", var159), 
   var0("> #BackgroundPaper", var164), 
   var0("> #ForegroundMain", var169), 
   var0("> #ForegroundMuted", var174), 
   var0("> #ForegroundContrast", var179), 
   var0("> #TextPrimary", var184), 
   var0("> #TextSecondary", var189), 
   var0("> #TextContrast", var194), 
   var156("> #WarningMain", var239), 
   var0("> #ActionHover", var244, {}), 
   var0("> #ActionEnabled", var254), 
   var0("> #ActionSelected", var259), 
   var0("> #ActionActivated", var264), 
   var0("> #ActionFocusBorder", var269), 
   var0("> #PrimaryMain", var275), 
   var0("> #PrimaryHoverBackground", var280, {}), 
   var0("> #SecondaryMain", var290)
})
