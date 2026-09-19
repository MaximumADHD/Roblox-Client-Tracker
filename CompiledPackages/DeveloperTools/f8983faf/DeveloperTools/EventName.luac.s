MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["Dash"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["freeze"]
       14 MOVE                             R4 R3
       15 LOADK                            R5 K7 ["EventName"]
       16 DUPTABLE                         R6 K13 [{["CloseTarget"] = "CloseTarget", ["GetTargets"] = "GetTargets", ["ShowTargets"] = "ShowTargets", ["AttachTarget"] = "AttachTarget", ["RoactInspector"]}]
       17 MOVE                             R7 R3
       18 LOADK                            R8 K14 ["EventName.RoactInspector"]
       19 DUPTABLE                         R9 K53 [{["GetChildren"] = "RoactInspector.GetChildren", ["ShowChildren"] = "RoactInspector.ShowChildren", ["GetBranch"] = "RoactInspector.GetBranch", ["ShowBranch"] = "RoactInspector.ShowBranch", ["GetFields"] = "RoactInspector.GetFields", ["ShowFields"] = "RoactInspector.ShowFields", ["SetPicking"] = "RoactInspector.SetPicking", ["PickInstance"] = "RoactInspector.PickInstance", ["OpenPath"] = "RoactInspector.OpenPath", ["Highlight"] = "RoactInspector.GetHighlight", ["Dehighlight"] = "RoactInspector.Dehighlight", ["SetProfiling"] = "RoactInspector.SetProfiling", ["SetProfileFilter"] = "RoactInspector.SetProfileFilter", ["SetProfileSearchTerm"] = "RoactInspector.SetProfileSearchTerm", ["GetProfileData"] = "RoactInspector.GetProfileData", ["ShowProfileData"] = "RoactInspector.ShowProfileData", ["SortProfileData"] = "RoactInspector.SortProfileData", ["ClearProfileData"] = "RoactInspector.ClearProfileData", ["SelectProfileInstance"] = "RoactInspector.SelectProfileInstance"}]
       20 LOADB                            R10 1
       21 CALL                             R7 3 1
       22 SETTABLEKS                       R7 R6 K12 ["RoactInspector"]
       24 LOADB                            R7 1
       25 CALL                             R4 3 -1
       26 RETURN                           R4 -1
