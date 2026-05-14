PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["Experience"]
        5 LOADK                            R5 K1 ["FilterMenu"]
        6 LOADK                            R6 K2 ["FilterForExperience"]
        7 NAMECALL                         R3 R0 K3 ["getText"]
        9 CALL                             R3 3 1
       10 SETTABLE                         R3 R1 R2
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K4 ["Monetization"]
       14 LOADK                            R5 K1 ["FilterMenu"]
       15 LOADK                            R6 K5 ["FilterForMonetization"]
       16 NAMECALL                         R3 R0 K3 ["getText"]
       18 CALL                             R3 3 1
       19 SETTABLE                         R3 R1 R2
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K6 ["Permissions"]
       23 LOADK                            R5 K1 ["FilterMenu"]
       24 LOADK                            R6 K7 ["FilterForPermissions"]
       25 NAMECALL                         R3 R0 K3 ["getText"]
       27 CALL                             R3 3 1
       28 SETTABLE                         R3 R1 R2
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R2 R2 K8 ["Place"]
       32 LOADK                            R5 K1 ["FilterMenu"]
       33 LOADK                            R6 K9 ["FilterForPlace"]
       34 NAMECALL                         R3 R0 K3 ["getText"]
       36 CALL                             R3 3 1
       37 SETTABLE                         R3 R1 R2
       38 GETUPVAL                         R2 0
       39 GETTABLEKS                       R2 R2 K10 ["Publish"]
       41 LOADK                            R5 K1 ["FilterMenu"]
       42 LOADK                            R6 K11 ["FilterForPublish"]
       43 NAMECALL                         R3 R0 K3 ["getText"]
       45 CALL                             R3 3 1
       46 SETTABLE                         R3 R1 R2
       47 GETUPVAL                         R2 0
       48 GETTABLEKS                       R2 R2 K12 ["Package"]
       50 LOADK                            R5 K1 ["FilterMenu"]
       51 LOADK                            R6 K13 ["FilterForPackage"]
       52 NAMECALL                         R3 R0 K3 ["getText"]
       54 CALL                             R3 3 1
       55 SETTABLE                         R3 R1 R2
       56 GETUPVAL                         R2 0
       57 GETTABLEKS                       R2 R2 K14 ["Scripts"]
       59 LOADK                            R5 K1 ["FilterMenu"]
       60 LOADK                            R6 K15 ["FilterForScripts"]
       61 NAMECALL                         R3 R0 K3 ["getText"]
       63 CALL                             R3 3 1
       64 SETTABLE                         R3 R1 R2
       65 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["SharedTypes"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K8 ["EventFilterTypes"]
       20 DUPCLOSURE                       R3 K9 [PROTO_0]
       21 CAPTURE                          VAL R2
       22 RETURN                           R3 1
