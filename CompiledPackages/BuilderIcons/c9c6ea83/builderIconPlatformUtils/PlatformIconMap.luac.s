MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["Icon"]
       11 CALL                             R0 1 1
       12 NEWTABLE                         R1 16 0
       14 GETIMPORT                        R2 K9 [Enum.Platform.PS3]
       16 GETTABLEKS                       R3 R0 K10 ["Playstation"]
       18 SETTABLE                         R3 R1 R2
       19 GETIMPORT                        R2 K12 [Enum.Platform.PS4]
       21 GETTABLEKS                       R3 R0 K10 ["Playstation"]
       23 SETTABLE                         R3 R1 R2
       24 GETIMPORT                        R2 K14 [Enum.Platform.PS5]
       26 GETTABLEKS                       R3 R0 K10 ["Playstation"]
       28 SETTABLE                         R3 R1 R2
       29 GETIMPORT                        R2 K16 [Enum.Platform.XBoxOne]
       31 GETTABLEKS                       R3 R0 K17 ["Xbox"]
       33 SETTABLE                         R3 R1 R2
       34 GETIMPORT                        R2 K19 [Enum.Platform.XBox360]
       36 GETTABLEKS                       R3 R0 K17 ["Xbox"]
       38 SETTABLE                         R3 R1 R2
       39 GETIMPORT                        R2 K21 [Enum.Platform.Android]
       41 GETTABLEKS                       R3 R0 K20 ["Android"]
       43 SETTABLE                         R3 R1 R2
       44 GETIMPORT                        R2 K23 [Enum.Platform.IOS]
       46 GETTABLEKS                       R3 R0 K24 ["Apple"]
       48 SETTABLE                         R3 R1 R2
       49 GETIMPORT                        R2 K26 [Enum.Platform.OSX]
       51 GETTABLEKS                       R3 R0 K24 ["Apple"]
       53 SETTABLE                         R3 R1 R2
       54 GETIMPORT                        R2 K28 [Enum.Platform.Windows]
       56 GETTABLEKS                       R3 R0 K29 ["Microsoft"]
       58 SETTABLE                         R3 R1 R2
       59 GETIMPORT                        R2 K31 [Enum.Platform.MetaOS]
       61 GETTABLEKS                       R3 R0 K32 ["Meta"]
       63 SETTABLE                         R3 R1 R2
       64 RETURN                           R1 1
