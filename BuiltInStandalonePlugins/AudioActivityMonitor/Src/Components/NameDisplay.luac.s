PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Name"]
        2 GETTABLEKS                       R2 R0 K1 ["ClassName"]
        4 JUMPIFNOTEQKS                    R2 K2 ["DetachedSound"] ; [+2]
        6 LOADK                            R2 K3 ["Sound"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K4 ["getClassIcon"]
       10 MOVE                             R4 R2
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K5 ["createElement"]
       15 GETUPVAL                         R5 2
       16 DUPTABLE                         R6 K8 [{["tag"] = "row size-full items-left align-x-left align-y-center gap-xsmall"}]
       17 DUPTABLE                         R7 K11 [{"Icon", "Label"}]
       18 MOVE                             R8 R3
       19 JUMPIFNOT                        R8 ; [+30]
       20 GETUPVAL                         R8 1
       21 GETTABLEKS                       R8 R8 K5 ["createElement"]
       23 GETUPVAL                         R9 3
       24 GETTABLEKS                       R9 R9 K12 ["Image"]
       26 DUPTABLE                         R10 K18 [{["LayoutOrder"] = 1, ["Size"], ["tag"] = "shrink-0", ["Image"], ["imageRect"]}]
       27 GETIMPORT                        R11 K21 [UDim2.fromOffset]
       29 LOADN                            R12 16
       30 LOADN                            R13 16
       31 CALL                             R11 2 1
       32 SETTABLEKS                       R11 R10 K15 ["Size"]
       34 GETTABLEKS                       R11 R3 K12 ["Image"]
       36 SETTABLEKS                       R11 R10 K12 ["Image"]
       38 DUPTABLE                         R11 K24 [{"offset", "size"}]
       39 GETTABLEKS                       R12 R3 K25 ["ImageRectOffset"]
       41 SETTABLEKS                       R12 R11 K22 ["offset"]
       43 GETTABLEKS                       R12 R3 K26 ["ImageRectSize"]
       45 SETTABLEKS                       R12 R11 K23 ["size"]
       47 SETTABLEKS                       R11 R10 K17 ["imageRect"]
       49 CALL                             R8 2 1
       50 SETTABLEKS                       R8 R7 K9 ["Icon"]
       52 GETUPVAL                         R8 1
       53 GETTABLEKS                       R8 R8 K5 ["createElement"]
       55 GETUPVAL                         R9 4
       56 DUPTABLE                         R10 K31 [{["LayoutOrder"] = 2, ["Text"], ["TextTruncate"], ["IsContextMenuOpen"], ["tag"]}]
       57 SETTABLEKS                       R1 R10 K28 ["Text"]
       59 GETIMPORT                        R11 K34 [Enum.TextTruncate.AtEnd]
       61 SETTABLEKS                       R11 R10 K29 ["TextTruncate"]
       63 GETTABLEKS                       R11 R0 K35 ["TableState"]
       65 GETTABLEKS                       R11 R11 K36 ["isContextMenuOpen"]
       67 SETTABLEKS                       R11 R10 K30 ["IsContextMenuOpen"]
       69 NEWTABLE                         R11 2 0
       71 LOADB                            R12 1
       72 SETTABLEKS                       R12 R11 K37 ["fill size-0-full text-body-small text-align-x-left"]
       74 GETTABLEKS                       R12 R0 K38 ["IsSelected"]
       76 SETTABLEKS                       R12 R11 K39 ["content-action-emphasis"]
       78 SETTABLEKS                       R11 R10 K6 ["tag"]
       80 CALL                             R8 2 1
       81 SETTABLEKS                       R8 R7 K10 ["Label"]
       83 CALL                             R4 3 -1
       84 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioActivityMonitor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K11 ["View"]
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R0 K8 ["Src"]
       34 GETTABLEKS                       R6 R6 K12 ["Util"]
       36 GETTABLEKS                       R6 R6 K13 ["ClassIconUtil"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R0 K8 ["Src"]
       43 GETTABLEKS                       R7 R7 K14 ["Components"]
       45 GETTABLEKS                       R7 R7 K15 ["TextWithTooltip"]
       47 CALL                             R6 1 1
       48 DUPCLOSURE                       R7 K16 [PROTO_0]
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R6
       54 RETURN                           R7 1
