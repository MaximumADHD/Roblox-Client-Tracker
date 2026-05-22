MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K7 [{"GRID_SIZE_MIN", "GRID_SIZE_MAX", "GRID_SIZE_SNAP_INCREMENT", "GRID_SIZE_VERTICAL_DRAG_TOLERANCE", "STUDS_PER_TILE_MIN", "STUDS_PER_TILE_MAX", "STUDS_PER_TILE_SNAP_INCREMENT"}]
        2 LOADN                            R1 60
        3 SETTABLEKS                       R1 R0 K0 ["GRID_SIZE_MIN"]
        5 LOADN                            R1 200
        6 SETTABLEKS                       R1 R0 K1 ["GRID_SIZE_MAX"]
        8 LOADN                            R1 10
        9 SETTABLEKS                       R1 R0 K2 ["GRID_SIZE_SNAP_INCREMENT"]
       11 LOADN                            R1 44
       12 SETTABLEKS                       R1 R0 K3 ["GRID_SIZE_VERTICAL_DRAG_TOLERANCE"]
       14 LOADK                            R1 K8 [0.1]
       15 SETTABLEKS                       R1 R0 K4 ["STUDS_PER_TILE_MIN"]
       17 LOADN                            R1 20
       18 SETTABLEKS                       R1 R0 K5 ["STUDS_PER_TILE_MAX"]
       20 LOADK                            R1 K8 [0.1]
       21 SETTABLEKS                       R1 R0 K6 ["STUDS_PER_TILE_SNAP_INCREMENT"]
       23 RETURN                           R0 1
