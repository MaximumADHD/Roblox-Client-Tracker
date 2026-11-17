PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+28]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["Contexts"]
        5 GETTABLEKS                       R0 R0 K1 ["Localization"]
        7 GETTABLEKS                       R0 R0 K1 ["Localization"]
        9 GETTABLEKS                       R0 R0 K2 ["new"]
       11 DUPTABLE                         R1 K7 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "AudioViewportVisualizations"}]
       12 GETIMPORT                        R2 K9 [script]
       14 GETTABLEKS                       R2 R2 K10 ["Parent"]
       16 GETTABLEKS                       R2 R2 K11 ["SourceStrings"]
       18 SETTABLEKS                       R2 R1 K3 ["stringResourceTable"]
       20 GETIMPORT                        R2 K9 [script]
       22 GETTABLEKS                       R2 R2 K10 ["Parent"]
       24 GETTABLEKS                       R2 R2 K12 ["LocalizedStrings"]
       26 SETTABLEKS                       R2 R1 K4 ["translationResourceTable"]
       28 CALL                             R0 1 1
       29 SETUPVAL                         R0 0
       30 GETUPVAL                         R0 0
       31 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioViewportVisualizations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["StudioFoundation"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 1 0
       16 LOADNIL                          R3
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          REF R3
       19 CAPTURE                          VAL R1
       20 SETTABLEKS                       R4 R2 K8 ["get"]
       22 CLOSEUPVALS                      R3
       23 RETURN                           R2 1
