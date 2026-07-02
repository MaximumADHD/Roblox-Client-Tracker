PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K7 [{[1] = "Experience", ["Monetization"] = "Monetization", ["Permissions"] = "Permissions", ["Place"] = "Place", ["Publish"] = "Publish", ["Package"] = "Package", ["Scripts"] = "Scripts"}]
        2 DUPCLOSURE                       R1 K8 [PROTO_0]
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1
