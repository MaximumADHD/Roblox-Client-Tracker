MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{"None", "Editing3D", "Scripting", "PrivateScripting"}]
        2 LOADK                            R1 K5 ["Enum.CollaboratorStatus.None"]
        3 SETTABLEKS                       R1 R0 K0 ["None"]
        5 LOADK                            R1 K6 ["Enum.CollaboratorStatus.Editing3D"]
        6 SETTABLEKS                       R1 R0 K1 ["Editing3D"]
        8 LOADK                            R1 K7 ["Enum.CollaboratorStatus.Scripting"]
        9 SETTABLEKS                       R1 R0 K2 ["Scripting"]
       11 LOADK                            R1 K8 ["Enum.CollaboratorStatus.PrivateScripting"]
       12 SETTABLEKS                       R1 R0 K3 ["PrivateScripting"]
       14 RETURN                           R0 1
