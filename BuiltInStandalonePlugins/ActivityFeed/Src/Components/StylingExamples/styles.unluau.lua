-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Parent.Packages.Framework).Styling.createStyleRule
local var1 = UDim2.new(0, 200, 0, 50)
local var2 = UDim2.new(0, 50, 0, 50)
local var25 = {}
var25.Size = UDim2.new(1, 0, 1, 0)
local var35 = {}
var35.Size = UDim2.new(1, 0, 1, 0)
var35.AutomaticSize = Enum.AutomaticSize.XY
var35.TextXAlignment = Enum.TextXAlignment.Center
var35.TextYAlignment = Enum.TextYAlignment.Center
var35.BackgroundTransparency = 1
var35.TextSize = 14
local var47 = var0(">> TextLabel", var35)
local var50 = {}
var50.Size = var1
var50.BackgroundColor3 = "$BackgroundDefault"
local var55 = {}
var55.Size = var1
var55.BackgroundColor3 = "$BackgroundPaper"
local var60 = {}
var60.Size = var1
var60.BackgroundColor3 = "$ForegroundMain"
local var65 = {}
var65.Size = var1
var65.BackgroundColor3 = "$ForegroundMuted"
local var70 = {}
var70.Size = var1
var70.BackgroundColor3 = "$ForegroundContrast"
local var72 = var0("> #ForegroundContrast", var70)
local var75 = {}
var75.Size = var1
var75.TextColor3 = "$TextPrimary"
local var80 = {}
var80.Size = var1
var80.TextColor3 = "$TextSecondary"
local var85 = {}
var85.Size = var1
var85.TextColor3 = "$TextContrast"
local var90 = {}
var90.Size = var1
var90.TextColor3 = "$TextLink"
local var95 = {}
var95.TextColor3 = "$TextLink"
local var97 = var0(":hover", var95)
local var98 = var0("> #TextLink", var90, {})
local var101 = {}
var101.Size = var1
var101.TextColor3 = "$TextDisabled"
local var103 = var0("> #TextDisabled", var101)
local var106 = {}
var106.Size = var1
var106.TextColor3 = "$TextError"
local var108 = var0("> #TextError", var106)
local var111 = {}
var111.Size = var1
var111.TextColor3 = "$TextSuccess"
local var113 = var0("> #TextSuccess", var111)
local var116 = {}
var116.Size = var1
var116.TextColor3 = "$TextWarning"
local var118 = var0("> #TextWarning", var116)
local var121 = {}
var121.Size = var1
var121.BackgroundColor3 = "$ErrorMain"
local var123 = var0("> #ErrorMain", var121)
local var126 = {}
var126.Size = var1
var126.BackgroundColor3 = "$SuccessMain"
local var128 = var0("> #SuccessMain", var126)
var47 = var0
local var130 = {}
var130.Size = var1
var130.BackgroundColor3 = "$WarningMain"
local var132 = var47("> #WarningMain", var130)
local var135 = {}
var135.Size = var1
var135.BackgroundColor3 = "$ActionEnabled"
var72 = var0
local var139 = {}
var139.BackgroundColor3 = "$ActionHover"
local var141 = var72(":hover", var139)
local var145 = {}
var145.Size = var1
var145.BackgroundColor3 = "$ActionEnabled"
local var150 = {}
var150.Size = var1
var150.BackgroundColor3 = "$ActionSelected"
local var155 = {}
var155.Size = var1
var155.BackgroundColor3 = "$ActionActivated"
local var160 = {}
var160.Size = var1
var160.BackgroundColor3 = "$ActionEnabled"
var160.BorderColor3 = "$ActionFocusBorder"
local var166 = {}
var166.Size = var1
var166.BackgroundColor3 = "$PrimaryMain"
local var171 = {}
var171.Size = var1
var171.BackgroundColor3 = "$PrimaryMain"
var108 = var0
local var175 = {}
var175.BackgroundColor3 = "$PrimaryHoverBackground"
local var177 = var108(":hover", var175)
local var181 = {}
var181.Size = var1
var181.BackgroundColor3 = "$SecondaryMain"
local var186 = {}
var186.Size = var1
var186.BackgroundColor3 = "$SecondaryMuted"
local var37 = var0("> #SecondaryMuted", var186)
local var191 = {}
var191.Size = var1
var191.BackgroundColor3 = "$SecondaryContrast"
local var39 = var0("> #SecondaryContrast", var191)
local var196 = {}
var196.Size = var1
var196.BackgroundColor3 = "$SecondaryMain"
var128 = var0
local var200 = {}
var200.BackgroundColor3 = "$SecondaryHoverBackground"
local var202 = var128(":hover", var200)
local var42 = var0("> #SecondaryHoverBackground", var196, {})
local var206 = {}
var206.Size = var1
var206.BackgroundColor3 = "$SecondaryMain"
var206.BorderColor3 = "$SecondaryHoverOutlineBorder"
local var44 = var0("> #SecondaryHoverOutlineBorder", var206)
local var212 = {}
var212.Size = var1
var212.BackgroundColor3 = "$SecondaryMain"
var212.BorderColor3 = "$SecondaryRestingOutlineBorder"
local var46 = var0("> #SecondaryRestingOutlineBorder", var212)
local var218 = {}
var218.Size = var1
var218.BackgroundColor3 = "$FilledInputBackground"
local var47 = var0("> #FilledInputBackground", var218)
local var223 = {}
var223.Size = var1
var223.BackgroundColor3 = "$Divider"
local var48 = var0("> #Divider", var223)
var132 = var0
local var227 = {}
var227.Size = var2
var227.Image = "$CheckboxUncheckedImage"
local var50 = var132("> #CheckboxUncheckedImage", var227)
local var232 = {}
var232.Size = var2
var232.Image = "$CheckboxCheckedImage"
local var52 = var0("> #CheckboxCheckedImage", var232)
local var237 = {}
var237.Size = var2
var237.Image = "$CheckboxIndeterminateImage"
local var53 = var0("> #CheckboxIndeterminateImage", var237)
local var242 = {}
var242.Size = var2
var242.Image = "$CheckboxDisabledImage"
local var54 = var0("> #CheckboxDisabledImage", var242)
return var0(".Component-TokenExamples", var25, { 
   var0(">> TextLabel", var35), 
   var0("> #BackgroundDefault", var50), 
   var0("> #BackgroundPaper", var55), 
   var0("> #ForegroundMain", var60), 
   var0("> #ForegroundMuted", var65), 
   var0("> #ForegroundContrast", var70), 
   var0("> #TextPrimary", var75), 
   var0("> #TextSecondary", var80), 
   var0("> #TextContrast", var85), 
   var47("> #WarningMain", var130), 
   var0("> #ActionHover", var135, {}), 
   var0("> #ActionEnabled", var145), 
   var0("> #ActionSelected", var150), 
   var0("> #ActionActivated", var155), 
   var0("> #ActionFocusBorder", var160), 
   var0("> #PrimaryMain", var166), 
   var0("> #PrimaryHoverBackground", var171, {}), 
   var0("> #SecondaryMain", var181)
})
