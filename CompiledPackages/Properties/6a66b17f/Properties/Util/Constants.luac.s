MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 LOADN                            R1 6
        4 SETTABLEKS                       R1 R0 K0 ["scrollBarWidth"]
        6 GETIMPORT                        R1 K2 [game]
        8 LOADK                            R3 K3 ["PropertiesMaxLabelWidth"]
        9 LOADN                            R4 135
       10 NAMECALL                         R1 R1 K4 ["DefineFastInt"]
       12 CALL                             R1 3 1
       13 SETTABLEKS                       R1 R0 K5 ["maxLabelWidth"]
       15 GETIMPORT                        R1 K2 [game]
       17 LOADK                            R3 K6 ["PropertiesMinValueWidth"]
       18 LOADN                            R4 155
       19 NAMECALL                         R1 R1 K4 ["DefineFastInt"]
       21 CALL                             R1 3 1
       22 SETTABLEKS                       R1 R0 K7 ["minValueWidth"]
       24 LOADK                            R1 K8 [0.62]
       25 SETTABLEKS                       R1 R0 K9 ["disabledTransparency"]
       27 GETIMPORT                        R1 K12 [Color3.fromRGB]
       29 LOADN                            R2 223
       30 LOADN                            R3 40
       31 LOADN                            R4 31
       32 CALL                             R1 3 1
       33 SETTABLEKS                       R1 R0 K13 ["unimplementedLabelColor"]
       35 LOADK                            R1 K14 [0.5]
       36 SETTABLEKS                       R1 R0 K15 ["readOnlyLabelTransparency"]
       38 GETIMPORT                        R1 K12 [Color3.fromRGB]
       40 LOADN                            R2 255
       41 LOADN                            R3 255
       42 LOADN                            R4 255
       43 CALL                             R1 3 1
       44 SETTABLEKS                       R1 R0 K16 ["multipleSwatchColor"]
       46 DUPTABLE                         R1 K20 [{"X", "Y", "Z"}]
       47 GETIMPORT                        R2 K22 [Color3.fromHex]
       49 LOADK                            R3 K23 ["#DF281F"]
       50 CALL                             R2 1 1
       51 SETTABLEKS                       R2 R1 K17 ["X"]
       53 GETIMPORT                        R2 K22 [Color3.fromHex]
       55 LOADK                            R3 K24 ["#39C582"]
       56 CALL                             R2 1 1
       57 SETTABLEKS                       R2 R1 K18 ["Y"]
       59 GETIMPORT                        R2 K22 [Color3.fromHex]
       61 LOADK                            R3 K25 ["#2F7AC6"]
       62 CALL                             R2 1 1
       63 SETTABLEKS                       R2 R1 K19 ["Z"]
       65 SETTABLEKS                       R1 R0 K26 ["VectorColors"]
       67 RETURN                           R0 1
