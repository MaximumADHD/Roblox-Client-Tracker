PROTO_0:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 FASTCALL2K                       ASSERT R0 K4 ; [+5]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K4 ["AppFramework.Contexts must run inside the DesignAssist plugin tree"]
       11 GETIMPORT                        R1 K6 [assert]
       13 CALL                             R1 2 0
       14 GETIMPORT                        R1 K8 [require]
       16 GETTABLEKS                       R2 R0 K9 ["Packages"]
       18 GETTABLEKS                       R2 R2 K10 ["React"]
       20 CALL                             R1 1 1
       21 GETIMPORT                        R2 K8 [require]
       23 GETIMPORT                        R3 K1 [script]
       25 GETTABLEKS                       R3 R3 K11 ["Parent"]
       27 GETTABLEKS                       R3 R3 K12 ["DeviceProfiles"]
       29 CALL                             R2 1 1
       30 NEWTABLE                         R3 16 0
       32 DUPTABLE                         R4 K18 [{["top"] = 0, ["right"] = 0, ["bottom"] = 0, ["left"] = 0}]
       33 SETTABLEKS                       R4 R3 K19 ["ZERO_INSETS"]
       35 LOADN                            R4 224
       36 SETTABLEKS                       R4 R3 K20 ["SUPPORT_MIN_WIDTH"]
       38 LOADN                            R4 432
       39 SETTABLEKS                       R4 R3 K21 ["SUPPORT_MAX_WIDTH"]
       41 LOADN                            R4 320
       42 SETTABLEKS                       R4 R3 K22 ["SUPPORT_DEFAULT_WIDTH"]
       44 GETTABLEKS                       R4 R1 K23 ["createContext"]
       46 GETTABLEKS                       R5 R2 K24 ["getDefault"]
       48 CALL                             R5 0 -1
       49 CALL                             R4 -1 1
       50 SETTABLEKS                       R4 R3 K25 ["DeviceProfileContext"]
       52 GETTABLEKS                       R4 R1 K23 ["createContext"]
       54 GETTABLEKS                       R5 R2 K26 ["getLayoutMetrics"]
       56 GETTABLEKS                       R6 R2 K24 ["getDefault"]
       58 CALL                             R6 0 1
       59 GETTABLEKS                       R6 R6 K27 ["width"]
       61 CALL                             R5 1 -1
       62 CALL                             R4 -1 1
       63 SETTABLEKS                       R4 R3 K28 ["LayoutMetricsContext"]
       65 GETTABLEKS                       R4 R1 K23 ["createContext"]
       67 DUPTABLE                         R5 K39 [{["columns"] = 12, ["margin"] = 32, ["gutter"] = 16, ["contentWidth"], ["colWidth"] = 0, ["breakpoint"] = "Medium"}]
       68 GETTABLEKS                       R6 R2 K24 ["getDefault"]
       70 CALL                             R6 0 1
       71 GETTABLEKS                       R6 R6 K27 ["width"]
       73 SETTABLEKS                       R6 R5 K35 ["contentWidth"]
       75 CALL                             R4 1 1
       76 SETTABLEKS                       R4 R3 K40 ["GridContext"]
       78 GETTABLEKS                       R4 R1 K23 ["createContext"]
       80 GETTABLEKS                       R5 R3 K19 ["ZERO_INSETS"]
       82 CALL                             R4 1 1
       83 SETTABLEKS                       R4 R3 K41 ["RegionInsetContext"]
       85 GETTABLEKS                       R4 R1 K23 ["createContext"]
       87 LOADB                            R5 0
       88 CALL                             R4 1 1
       89 SETTABLEKS                       R4 R3 K42 ["UseInsetsContext"]
       91 GETTABLEKS                       R4 R1 K23 ["createContext"]
       93 DUPTABLE                         R5 K55 [{["variant"] = "Default", ["activeRegions"], ["hasSupportRegion"] = False, ["hasNavigation"] = True, ["isSupportResizable"] = False, ["supportWidth"], ["setSupportWidth"], ["supportMinWidth"], ["supportMaxWidth"]}]
       94 NEWTABLE                         R6 0 2
       96 LOADK                            R7 K56 ["navigation"]
       97 LOADK                            R8 K57 ["content"]
       98 SETLIST                          R6 R7 2 [1]
      100 SETTABLEKS                       R6 R5 K45 ["activeRegions"]
      102 GETTABLEKS                       R6 R3 K22 ["SUPPORT_DEFAULT_WIDTH"]
      104 SETTABLEKS                       R6 R5 K51 ["supportWidth"]
      106 DUPCLOSURE                       R6 K58 [PROTO_0]
      107 SETTABLEKS                       R6 R5 K52 ["setSupportWidth"]
      109 GETTABLEKS                       R6 R3 K20 ["SUPPORT_MIN_WIDTH"]
      111 SETTABLEKS                       R6 R5 K53 ["supportMinWidth"]
      113 GETTABLEKS                       R6 R3 K21 ["SUPPORT_MAX_WIDTH"]
      115 SETTABLEKS                       R6 R5 K54 ["supportMaxWidth"]
      117 CALL                             R4 1 1
      118 SETTABLEKS                       R4 R3 K59 ["ScaffoldContext"]
      120 GETTABLEKS                       R4 R1 K23 ["createContext"]
      122 DUPTABLE                         R5 K67 [{["isProvided"] = False, ["region"] = "content", ["density"] = "default", ["breakpoint"] = "Medium", ["columns"] = 12, ["margin"] = 32, ["gutter"] = 16, ["peek"] = 0, ["isScrollable"] = True, ["width"] = 960}]
      123 CALL                             R4 1 1
      124 SETTABLEKS                       R4 R3 K68 ["RegionContext"]
      126 GETTABLEKS                       R4 R1 K23 ["createContext"]
      128 DUPTABLE                         R5 K72 [{["structure"] = "body", ["isSticky"] = False}]
      129 CALL                             R4 1 1
      130 SETTABLEKS                       R4 R3 K73 ["StructureContext"]
      132 RETURN                           R3 1
