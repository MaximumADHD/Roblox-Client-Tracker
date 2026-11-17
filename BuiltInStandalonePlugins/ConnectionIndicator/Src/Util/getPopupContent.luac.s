PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{[1] = "GoodConnectionTitle", ["Message"] = "GoodConnectionMessage"}]
        2 DUPTABLE                         R1 K12 [{"CONNECTED", "SAVING", "BADCONNECTION", "DISCONNECTED", "PLACESIZEAPPROACHINGLIMIT", "PLACESIZETOOLARGE", "PLACEUPLOADFAILING"}]
        3 SETTABLEKS                       R0 R1 K5 ["CONNECTED"]
        5 SETTABLEKS                       R0 R1 K6 ["SAVING"]
        7 DUPTABLE                         R2 K17 [{[1] = "DelayedConnectionTitle", ["Message"] = "DelayedConnectionMessage", ["Tip"] = "DelayedConnectionTip"}]
        8 SETTABLEKS                       R2 R1 K7 ["BADCONNECTION"]
       10 DUPTABLE                         R2 K19 [{[1] = "DisconnectedTitle"}]
       11 SETTABLEKS                       R2 R1 K8 ["DISCONNECTED"]
       13 DUPTABLE                         R2 K25 [{[1] = "PlaceSizeApproachingLimitTitle", ["Message"] = "PlaceSizeApproachingLimitMessage", ["Tip"] = "PlaceSizeApproachingLimitTip", ["HasLearnMore"] = True}]
       14 SETTABLEKS                       R2 R1 K9 ["PLACESIZEAPPROACHINGLIMIT"]
       16 DUPTABLE                         R2 K30 [{[1] = "PlaceSizeTooLargeTitle", ["Message"] = "PlaceSizeTooLargeMessage", ["Tip"] = "PlaceSizeTooLargeTip", ["HasLearnMore"] = True, ["IsAlert"] = True}]
       17 SETTABLEKS                       R2 R1 K10 ["PLACESIZETOOLARGE"]
       19 DUPTABLE                         R2 K34 [{[1] = "PlaceUploadFailingTitle", ["Message"] = "PlaceUploadFailingMessage", ["Tip"] = "PlaceUploadFailingTip"}]
       20 SETTABLEKS                       R2 R1 K11 ["PLACEUPLOADFAILING"]
       22 DUPCLOSURE                       R2 K35 [PROTO_0]
       23 CAPTURE                          VAL R1
       24 RETURN                           R2 1
