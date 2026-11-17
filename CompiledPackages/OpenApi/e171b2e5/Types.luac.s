MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K10 [{[1] = "GET", ["POST"] = "POST", ["PUT"] = "PUT", ["DELETE"] = "DELETE", ["PATCH"] = "PATCH", ["HEAD"] = "HEAD", ["OPTIONS"] = "OPTIONS", ["TRACE"] = "TRACE", ["CONNECT"] = "CONNECT", ["QUERY"] = "QUERY"}]
        2 DUPTABLE                         R1 K15 [{["Network"] = "Network", ["HttpStatusCode"] = "HttpStatusCode", ["Validation"] = "Validation", ["InvalidRequest"] = "InvalidRequest"}]
        3 DUPTABLE                         R2 K18 [{"HTTP_METHOD", "ERROR_KIND"}]
        4 GETIMPORT                        R3 K21 [table.freeze]
        6 MOVE                             R4 R0
        7 CALL                             R3 1 1
        8 SETTABLEKS                       R3 R2 K16 ["HTTP_METHOD"]
       10 GETIMPORT                        R3 K21 [table.freeze]
       12 MOVE                             R4 R1
       13 CALL                             R3 1 1
       14 SETTABLEKS                       R3 R2 K17 ["ERROR_KIND"]
       16 RETURN                           R2 1
