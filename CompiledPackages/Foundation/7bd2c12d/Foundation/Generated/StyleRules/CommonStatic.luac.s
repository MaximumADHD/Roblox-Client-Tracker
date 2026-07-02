MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 128 0
        3 NEWTABLE                         R1 2 0
        5 LOADK                            R2 K0 ["UIFlexItem"]
        6 SETTABLEKS                       R2 R1 K1 ["pseudo"]
        8 NEWTABLE                         R2 2 0
       10 LOADN                            R3 3
       11 SETTABLEKS                       R3 R2 K2 ["ShrinkRatio"]
       13 GETIMPORT                        R3 K6 [Enum.UIFlexMode.Custom]
       15 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
       17 SETTABLEKS                       R2 R1 K8 ["properties"]
       19 SETTABLEKS                       R1 R0 K9 ["shrink-3"]
       21 NEWTABLE                         R1 1 0
       23 NEWTABLE                         R2 1 0
       25 GETIMPORT                        R3 K12 [Vector2.new]
       27 LOADK                            R4 K13 [0.5]
       28 LOADN                            R5 1
       29 CALL                             R3 2 1
       30 SETTABLEKS                       R3 R2 K14 ["AnchorPoint"]
       32 SETTABLEKS                       R2 R1 K8 ["properties"]
       34 SETTABLEKS                       R1 R0 K15 ["anchor-bottom-center"]
       36 NEWTABLE                         R1 2 0
       38 LOADK                            R2 K16 ["UIAspectRatioConstraint"]
       39 SETTABLEKS                       R2 R1 K1 ["pseudo"]
       41 NEWTABLE                         R2 1 0
       43 LOADK                            R3 K17 [1.333]
       44 SETTABLEKS                       R3 R2 K18 ["AspectRatio"]
       46 SETTABLEKS                       R2 R1 K8 ["properties"]
       48 SETTABLEKS                       R1 R0 K19 ["aspect-4-3"]
       50 NEWTABLE                         R1 1 0
       52 NEWTABLE                         R2 1 0
       54 GETIMPORT                        R3 K22 [Enum.AutomaticSize.X]
       56 SETTABLEKS                       R3 R2 K20 ["AutomaticSize"]
       58 SETTABLEKS                       R2 R1 K8 ["properties"]
       60 SETTABLEKS                       R1 R0 K23 ["auto-x"]
       62 NEWTABLE                         R1 2 0
       64 LOADK                            R2 K16 ["UIAspectRatioConstraint"]
       65 SETTABLEKS                       R2 R1 K1 ["pseudo"]
       67 NEWTABLE                         R2 1 0
       69 LOADK                            R3 K24 [0.8]
       70 SETTABLEKS                       R3 R2 K18 ["AspectRatio"]
       72 SETTABLEKS                       R2 R1 K8 ["properties"]
       74 SETTABLEKS                       R1 R0 K25 ["aspect-4-5"]
       76 NEWTABLE                         R1 1 0
       78 NEWTABLE                         R2 1 0
       80 GETIMPORT                        R3 K27 [UDim2.new]
       82 LOADK                            R4 K13 [0.5]
       83 LOADN                            R5 0
       84 LOADN                            R6 0
       85 LOADN                            R7 0
       86 CALL                             R3 4 1
       87 SETTABLEKS                       R3 R2 K28 ["Position"]
       89 SETTABLEKS                       R2 R1 K8 ["properties"]
       91 SETTABLEKS                       R1 R0 K29 ["position-top-center"]
       93 NEWTABLE                         R1 1 0
       95 NEWTABLE                         R2 1 0
       97 LOADB                            R3 1
       98 SETTABLEKS                       R3 R2 K30 ["ClipsDescendants"]
      100 SETTABLEKS                       R2 R1 K8 ["properties"]
      102 SETTABLEKS                       R1 R0 K31 ["clip"]
      104 NEWTABLE                         R1 1 0
      106 NEWTABLE                         R2 1 0
      108 LOADB                            R3 0
      109 SETTABLEKS                       R3 R2 K32 ["TextWrapped"]
      111 SETTABLEKS                       R2 R1 K8 ["properties"]
      113 SETTABLEKS                       R1 R0 K33 ["text-no-wrap"]
      115 NEWTABLE                         R1 2 0
      117 LOADK                            R2 K0 ["UIFlexItem"]
      118 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      120 NEWTABLE                         R2 2 0
      122 LOADN                            R3 3
      123 SETTABLEKS                       R3 R2 K34 ["GrowRatio"]
      125 GETIMPORT                        R3 K6 [Enum.UIFlexMode.Custom]
      127 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      129 SETTABLEKS                       R2 R1 K8 ["properties"]
      131 SETTABLEKS                       R1 R0 K35 ["grow-3"]
      133 NEWTABLE                         R1 1 0
      135 NEWTABLE                         R2 1 0
      137 GETIMPORT                        R3 K38 [Enum.TextTruncate.SplitWord]
      139 SETTABLEKS                       R3 R2 K36 ["TextTruncate"]
      141 SETTABLEKS                       R2 R1 K8 ["properties"]
      143 SETTABLEKS                       R1 R0 K39 ["text-truncate-split"]
      145 NEWTABLE                         R1 1 0
      147 NEWTABLE                         R2 1 0
      149 GETIMPORT                        R3 K42 [Enum.TextYAlignment.Center]
      151 SETTABLEKS                       R3 R2 K40 ["TextYAlignment"]
      153 SETTABLEKS                       R2 R1 K8 ["properties"]
      155 SETTABLEKS                       R1 R0 K43 ["text-align-y-center"]
      157 NEWTABLE                         R1 2 0
      159 LOADK                            R2 K16 ["UIAspectRatioConstraint"]
      160 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      162 NEWTABLE                         R2 1 0
      164 LOADK                            R3 K44 [0.75]
      165 SETTABLEKS                       R3 R2 K18 ["AspectRatio"]
      167 SETTABLEKS                       R2 R1 K8 ["properties"]
      169 SETTABLEKS                       R1 R0 K45 ["aspect-3-4"]
      171 NEWTABLE                         R1 1 0
      173 NEWTABLE                         R2 1 0
      175 GETIMPORT                        R3 K27 [UDim2.new]
      177 LOADK                            R4 K13 [0.5]
      178 LOADN                            R5 0
      179 LOADN                            R6 1
      180 LOADN                            R7 0
      181 CALL                             R3 4 1
      182 SETTABLEKS                       R3 R2 K28 ["Position"]
      184 SETTABLEKS                       R2 R1 K8 ["properties"]
      186 SETTABLEKS                       R1 R0 K46 ["position-bottom-center"]
      188 NEWTABLE                         R1 2 0
      190 LOADK                            R2 K0 ["UIFlexItem"]
      191 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      193 NEWTABLE                         R2 1 0
      195 GETIMPORT                        R3 K48 [Enum.UIFlexMode.Shrink]
      197 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      199 SETTABLEKS                       R2 R1 K8 ["properties"]
      201 SETTABLEKS                       R1 R0 K49 ["shrink"]
      203 NEWTABLE                         R1 1 0
      205 NEWTABLE                         R2 1 0
      207 GETIMPORT                        R3 K51 [Enum.TextYAlignment.Bottom]
      209 SETTABLEKS                       R3 R2 K40 ["TextYAlignment"]
      211 SETTABLEKS                       R2 R1 K8 ["properties"]
      213 SETTABLEKS                       R1 R0 K52 ["text-align-y-bottom"]
      215 NEWTABLE                         R1 1 0
      217 NEWTABLE                         R2 1 0
      219 GETIMPORT                        R3 K54 [Enum.TextXAlignment.Center]
      221 SETTABLEKS                       R3 R2 K53 ["TextXAlignment"]
      223 SETTABLEKS                       R2 R1 K8 ["properties"]
      225 SETTABLEKS                       R1 R0 K55 ["text-align-x-center"]
      227 NEWTABLE                         R1 2 0
      229 LOADK                            R2 K16 ["UIAspectRatioConstraint"]
      230 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      232 NEWTABLE                         R2 1 0
      234 LOADK                            R3 K56 [1.778]
      235 SETTABLEKS                       R3 R2 K18 ["AspectRatio"]
      237 SETTABLEKS                       R2 R1 K8 ["properties"]
      239 SETTABLEKS                       R1 R0 K57 ["aspect-16-9"]
      241 NEWTABLE                         R1 2 0
      243 LOADK                            R2 K16 ["UIAspectRatioConstraint"]
      244 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      246 NEWTABLE                         R2 1 0
      248 LOADN                            R3 1
      249 SETTABLEKS                       R3 R2 K18 ["AspectRatio"]
      251 SETTABLEKS                       R2 R1 K8 ["properties"]
      253 SETTABLEKS                       R1 R0 K58 ["aspect-1-1"]
      255 NEWTABLE                         R1 1 0
      257 NEWTABLE                         R2 1 0
      259 GETIMPORT                        R3 K60 [Enum.TextXAlignment.Left]
      261 SETTABLEKS                       R3 R2 K53 ["TextXAlignment"]
      263 SETTABLEKS                       R2 R1 K8 ["properties"]
      265 SETTABLEKS                       R1 R0 K61 ["text-align-x-left"]
      267 NEWTABLE                         R1 1 0
      269 NEWTABLE                         R2 1 0
      271 GETIMPORT                        R3 K27 [UDim2.new]
      273 LOADN                            R4 0
      274 LOADN                            R5 0
      275 LOADN                            R6 1
      276 LOADN                            R7 0
      277 CALL                             R3 4 1
      278 SETTABLEKS                       R3 R2 K28 ["Position"]
      280 SETTABLEKS                       R2 R1 K8 ["properties"]
      282 SETTABLEKS                       R1 R0 K62 ["position-bottom-left"]
      284 NEWTABLE                         R1 1 0
      286 NEWTABLE                         R2 1 0
      288 GETIMPORT                        R3 K64 [Enum.TextXAlignment.Right]
      290 SETTABLEKS                       R3 R2 K53 ["TextXAlignment"]
      292 SETTABLEKS                       R2 R1 K8 ["properties"]
      294 SETTABLEKS                       R1 R0 K65 ["text-align-x-right"]
      296 NEWTABLE                         R1 2 0
      298 LOADK                            R2 K16 ["UIAspectRatioConstraint"]
      299 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      301 NEWTABLE                         R2 1 0
      303 LOADK                            R3 K66 [0.667]
      304 SETTABLEKS                       R3 R2 K18 ["AspectRatio"]
      306 SETTABLEKS                       R2 R1 K8 ["properties"]
      308 SETTABLEKS                       R1 R0 K67 ["aspect-2-3"]
      310 NEWTABLE                         R1 2 0
      312 LOADK                            R2 K0 ["UIFlexItem"]
      313 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      315 NEWTABLE                         R2 1 0
      317 GETIMPORT                        R3 K70 [Enum.ItemLineAlignment.End]
      319 SETTABLEKS                       R3 R2 K68 ["ItemLineAlignment"]
      321 SETTABLEKS                       R2 R1 K8 ["properties"]
      323 SETTABLEKS                       R1 R0 K71 ["self-end"]
      325 NEWTABLE                         R1 2 0
      327 LOADK                            R2 K0 ["UIFlexItem"]
      328 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      330 NEWTABLE                         R2 1 0
      332 GETIMPORT                        R3 K73 [Enum.UIFlexMode.Grow]
      334 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      336 SETTABLEKS                       R2 R1 K8 ["properties"]
      338 SETTABLEKS                       R1 R0 K74 ["grow"]
      340 NEWTABLE                         R1 2 0
      342 LOADK                            R2 K0 ["UIFlexItem"]
      343 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      345 NEWTABLE                         R2 2 0
      347 LOADN                            R3 2
      348 SETTABLEKS                       R3 R2 K2 ["ShrinkRatio"]
      350 GETIMPORT                        R3 K6 [Enum.UIFlexMode.Custom]
      352 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      354 SETTABLEKS                       R2 R1 K8 ["properties"]
      356 SETTABLEKS                       R1 R0 K75 ["shrink-2"]
      358 NEWTABLE                         R1 1 0
      360 NEWTABLE                         R2 1 0
      362 LOADB                            R3 0
      363 SETTABLEKS                       R3 R2 K30 ["ClipsDescendants"]
      365 SETTABLEKS                       R2 R1 K8 ["properties"]
      367 SETTABLEKS                       R1 R0 K76 ["no-clip"]
      369 NEWTABLE                         R1 1 0
      371 NEWTABLE                         R2 1 0
      373 GETIMPORT                        R3 K78 [Enum.AutomaticSize.None]
      375 SETTABLEKS                       R3 R2 K20 ["AutomaticSize"]
      377 SETTABLEKS                       R2 R1 K8 ["properties"]
      379 SETTABLEKS                       R1 R0 K79 ["auto-none"]
      381 NEWTABLE                         R1 1 0
      383 NEWTABLE                         R2 1 0
      385 GETIMPORT                        R3 K12 [Vector2.new]
      387 LOADN                            R4 0
      388 LOADN                            R5 1
      389 CALL                             R3 2 1
      390 SETTABLEKS                       R3 R2 K14 ["AnchorPoint"]
      392 SETTABLEKS                       R2 R1 K8 ["properties"]
      394 SETTABLEKS                       R1 R0 K80 ["anchor-bottom-left"]
      396 NEWTABLE                         R1 2 0
      398 LOADN                            R2 -1
      399 SETTABLEKS                       R2 R1 K81 ["priority"]
      401 NEWTABLE                         R2 1 0
      403 GETIMPORT                        R3 K84 [Enum.Font.BuilderSans]
      405 SETTABLEKS                       R3 R2 K82 ["Font"]
      407 SETTABLEKS                       R2 R1 K8 ["properties"]
      409 SETTABLEKS                       R1 R0 K85 ["text-defaults"]
      411 NEWTABLE                         R1 1 0
      413 NEWTABLE                         R2 1 0
      415 LOADB                            R3 1
      416 SETTABLEKS                       R3 R2 K32 ["TextWrapped"]
      418 SETTABLEKS                       R2 R1 K8 ["properties"]
      420 SETTABLEKS                       R1 R0 K86 ["text-wrap"]
      422 NEWTABLE                         R1 1 0
      424 NEWTABLE                         R2 1 0
      426 GETIMPORT                        R3 K27 [UDim2.new]
      428 LOADK                            R4 K13 [0.5]
      429 LOADN                            R5 0
      430 LOADK                            R6 K13 [0.5]
      431 LOADN                            R7 0
      432 CALL                             R3 4 1
      433 SETTABLEKS                       R3 R2 K28 ["Position"]
      435 SETTABLEKS                       R2 R1 K8 ["properties"]
      437 SETTABLEKS                       R1 R0 K87 ["position-center-center"]
      439 NEWTABLE                         R1 1 0
      441 NEWTABLE                         R2 1 0
      443 GETIMPORT                        R3 K12 [Vector2.new]
      445 LOADN                            R4 1
      446 LOADK                            R5 K13 [0.5]
      447 CALL                             R3 2 1
      448 SETTABLEKS                       R3 R2 K14 ["AnchorPoint"]
      450 SETTABLEKS                       R2 R1 K8 ["properties"]
      452 SETTABLEKS                       R1 R0 K88 ["anchor-center-right"]
      454 NEWTABLE                         R1 2 0
      456 LOADK                            R2 K0 ["UIFlexItem"]
      457 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      459 NEWTABLE                         R2 2 0
      461 LOADN                            R3 1
      462 SETTABLEKS                       R3 R2 K2 ["ShrinkRatio"]
      464 GETIMPORT                        R3 K6 [Enum.UIFlexMode.Custom]
      466 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      468 SETTABLEKS                       R2 R1 K8 ["properties"]
      470 SETTABLEKS                       R1 R0 K89 ["shrink-1"]
      472 NEWTABLE                         R1 2 0
      474 LOADK                            R2 K0 ["UIFlexItem"]
      475 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      477 NEWTABLE                         R2 1 0
      479 GETIMPORT                        R3 K90 [Enum.ItemLineAlignment.Center]
      481 SETTABLEKS                       R3 R2 K68 ["ItemLineAlignment"]
      483 SETTABLEKS                       R2 R1 K8 ["properties"]
      485 SETTABLEKS                       R1 R0 K91 ["self-center"]
      487 NEWTABLE                         R1 1 0
      489 NEWTABLE                         R2 1 0
      491 GETIMPORT                        R3 K27 [UDim2.new]
      493 LOADN                            R4 0
      494 LOADN                            R5 0
      495 LOADN                            R6 0
      496 LOADN                            R7 0
      497 CALL                             R3 4 1
      498 SETTABLEKS                       R3 R2 K28 ["Position"]
      500 SETTABLEKS                       R2 R1 K8 ["properties"]
      502 SETTABLEKS                       R1 R0 K92 ["position-top-left"]
      504 NEWTABLE                         R1 1 0
      506 NEWTABLE                         R2 1 0
      508 GETIMPORT                        R3 K94 [Enum.TextYAlignment.Top]
      510 SETTABLEKS                       R3 R2 K40 ["TextYAlignment"]
      512 SETTABLEKS                       R2 R1 K8 ["properties"]
      514 SETTABLEKS                       R1 R0 K95 ["text-align-y-top"]
      516 NEWTABLE                         R1 1 0
      518 NEWTABLE                         R2 1 0
      520 GETIMPORT                        R3 K27 [UDim2.new]
      522 LOADN                            R4 1
      523 LOADN                            R5 0
      524 LOADN                            R6 0
      525 LOADN                            R7 0
      526 CALL                             R3 4 1
      527 SETTABLEKS                       R3 R2 K28 ["Position"]
      529 SETTABLEKS                       R2 R1 K8 ["properties"]
      531 SETTABLEKS                       R1 R0 K96 ["position-top-right"]
      533 NEWTABLE                         R1 2 0
      535 LOADK                            R2 K16 ["UIAspectRatioConstraint"]
      536 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      538 NEWTABLE                         R2 1 0
      540 LOADK                            R3 K13 [0.5]
      541 SETTABLEKS                       R3 R2 K18 ["AspectRatio"]
      543 SETTABLEKS                       R2 R1 K8 ["properties"]
      545 SETTABLEKS                       R1 R0 K97 ["aspect-1-2"]
      547 NEWTABLE                         R1 1 0
      549 NEWTABLE                         R2 1 0
      551 GETIMPORT                        R3 K27 [UDim2.new]
      553 LOADN                            R4 1
      554 LOADN                            R5 0
      555 LOADN                            R6 1
      556 LOADN                            R7 0
      557 CALL                             R3 4 1
      558 SETTABLEKS                       R3 R2 K28 ["Position"]
      560 SETTABLEKS                       R2 R1 K8 ["properties"]
      562 SETTABLEKS                       R1 R0 K98 ["position-bottom-right"]
      564 NEWTABLE                         R1 2 0
      566 LOADK                            R2 K16 ["UIAspectRatioConstraint"]
      567 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      569 NEWTABLE                         R2 1 0
      571 LOADK                            R3 K99 [0.563]
      572 SETTABLEKS                       R3 R2 K18 ["AspectRatio"]
      574 SETTABLEKS                       R2 R1 K8 ["properties"]
      576 SETTABLEKS                       R1 R0 K100 ["aspect-9-16"]
      578 NEWTABLE                         R1 1 0
      580 NEWTABLE                         R2 1 0
      582 LOADN                            R3 0
      583 SETTABLEKS                       R3 R2 K101 ["BackgroundTransparency"]
      585 SETTABLEKS                       R2 R1 K8 ["properties"]
      587 SETTABLEKS                       R1 R0 K102 ["x-default-transparency"]
      589 NEWTABLE                         R1 1 0
      591 NEWTABLE                         R2 1 0
      593 GETIMPORT                        R3 K12 [Vector2.new]
      595 LOADN                            R4 0
      596 LOADK                            R5 K13 [0.5]
      597 CALL                             R3 2 1
      598 SETTABLEKS                       R3 R2 K14 ["AnchorPoint"]
      600 SETTABLEKS                       R2 R1 K8 ["properties"]
      602 SETTABLEKS                       R1 R0 K103 ["anchor-center-left"]
      604 NEWTABLE                         R1 2 0
      606 LOADK                            R2 K0 ["UIFlexItem"]
      607 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      609 NEWTABLE                         R2 2 0
      611 LOADN                            R3 5
      612 SETTABLEKS                       R3 R2 K34 ["GrowRatio"]
      614 GETIMPORT                        R3 K6 [Enum.UIFlexMode.Custom]
      616 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      618 SETTABLEKS                       R2 R1 K8 ["properties"]
      620 SETTABLEKS                       R1 R0 K104 ["grow-5"]
      622 NEWTABLE                         R1 2 0
      624 LOADK                            R2 K0 ["UIFlexItem"]
      625 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      627 NEWTABLE                         R2 1 0
      629 GETIMPORT                        R3 K106 [Enum.ItemLineAlignment.Start]
      631 SETTABLEKS                       R3 R2 K68 ["ItemLineAlignment"]
      633 SETTABLEKS                       R2 R1 K8 ["properties"]
      635 SETTABLEKS                       R1 R0 K107 ["self-start"]
      637 NEWTABLE                         R1 1 0
      639 NEWTABLE                         R2 1 0
      641 GETIMPORT                        R3 K12 [Vector2.new]
      643 LOADK                            R4 K13 [0.5]
      644 LOADN                            R5 0
      645 CALL                             R3 2 1
      646 SETTABLEKS                       R3 R2 K14 ["AnchorPoint"]
      648 SETTABLEKS                       R2 R1 K8 ["properties"]
      650 SETTABLEKS                       R1 R0 K108 ["anchor-top-center"]
      652 NEWTABLE                         R1 2 0
      654 LOADK                            R2 K16 ["UIAspectRatioConstraint"]
      655 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      657 NEWTABLE                         R2 1 0
      659 LOADK                            R3 K109 [1.25]
      660 SETTABLEKS                       R3 R2 K18 ["AspectRatio"]
      662 SETTABLEKS                       R2 R1 K8 ["properties"]
      664 SETTABLEKS                       R1 R0 K110 ["aspect-5-4"]
      666 NEWTABLE                         R1 1 0
      668 NEWTABLE                         R2 1 0
      670 GETIMPORT                        R3 K112 [Enum.AutomaticSize.Y]
      672 SETTABLEKS                       R3 R2 K20 ["AutomaticSize"]
      674 SETTABLEKS                       R2 R1 K8 ["properties"]
      676 SETTABLEKS                       R1 R0 K113 ["auto-y"]
      678 NEWTABLE                         R1 2 0
      680 LOADK                            R2 K0 ["UIFlexItem"]
      681 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      683 NEWTABLE                         R2 1 0
      685 GETIMPORT                        R3 K114 [Enum.UIFlexMode.None]
      687 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      689 SETTABLEKS                       R2 R1 K8 ["properties"]
      691 SETTABLEKS                       R1 R0 K115 ["no-flex"]
      693 NEWTABLE                         R1 1 0
      695 NEWTABLE                         R2 1 0
      697 GETIMPORT                        R3 K27 [UDim2.new]
      699 LOADN                            R4 1
      700 LOADN                            R5 0
      701 LOADK                            R6 K13 [0.5]
      702 LOADN                            R7 0
      703 CALL                             R3 4 1
      704 SETTABLEKS                       R3 R2 K28 ["Position"]
      706 SETTABLEKS                       R2 R1 K8 ["properties"]
      708 SETTABLEKS                       R1 R0 K116 ["position-center-right"]
      710 NEWTABLE                         R1 1 0
      712 NEWTABLE                         R2 1 0
      714 GETIMPORT                        R3 K118 [Enum.TextTruncate.AtEnd]
      716 SETTABLEKS                       R3 R2 K36 ["TextTruncate"]
      718 SETTABLEKS                       R2 R1 K8 ["properties"]
      720 SETTABLEKS                       R1 R0 K119 ["text-truncate-end"]
      722 NEWTABLE                         R1 1 0
      724 NEWTABLE                         R2 1 0
      726 GETIMPORT                        R3 K120 [Enum.TextTruncate.None]
      728 SETTABLEKS                       R3 R2 K36 ["TextTruncate"]
      730 SETTABLEKS                       R2 R1 K8 ["properties"]
      732 SETTABLEKS                       R1 R0 K121 ["text-truncate-none"]
      734 NEWTABLE                         R1 2 0
      736 LOADK                            R2 K0 ["UIFlexItem"]
      737 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      739 NEWTABLE                         R2 1 0
      741 GETIMPORT                        R3 K123 [Enum.UIFlexMode.Fill]
      743 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      745 SETTABLEKS                       R2 R1 K8 ["properties"]
      747 SETTABLEKS                       R1 R0 K124 ["fill"]
      749 NEWTABLE                         R1 2 0
      751 LOADK                            R2 K0 ["UIFlexItem"]
      752 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      754 NEWTABLE                         R2 2 0
      756 LOADN                            R3 4
      757 SETTABLEKS                       R3 R2 K2 ["ShrinkRatio"]
      759 GETIMPORT                        R3 K6 [Enum.UIFlexMode.Custom]
      761 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      763 SETTABLEKS                       R2 R1 K8 ["properties"]
      765 SETTABLEKS                       R1 R0 K125 ["shrink-4"]
      767 NEWTABLE                         R1 1 0
      769 NEWTABLE                         R2 1 0
      771 GETIMPORT                        R3 K12 [Vector2.new]
      773 LOADK                            R4 K13 [0.5]
      774 LOADK                            R5 K13 [0.5]
      775 CALL                             R3 2 1
      776 SETTABLEKS                       R3 R2 K14 ["AnchorPoint"]
      778 SETTABLEKS                       R2 R1 K8 ["properties"]
      780 SETTABLEKS                       R1 R0 K126 ["anchor-center-center"]
      782 NEWTABLE                         R1 2 0
      784 LOADK                            R2 K0 ["UIFlexItem"]
      785 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      787 NEWTABLE                         R2 2 0
      789 LOADN                            R3 2
      790 SETTABLEKS                       R3 R2 K34 ["GrowRatio"]
      792 GETIMPORT                        R3 K6 [Enum.UIFlexMode.Custom]
      794 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      796 SETTABLEKS                       R2 R1 K8 ["properties"]
      798 SETTABLEKS                       R1 R0 K127 ["grow-2"]
      800 NEWTABLE                         R1 2 0
      802 LOADK                            R2 K0 ["UIFlexItem"]
      803 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      805 NEWTABLE                         R2 1 0
      807 GETIMPORT                        R3 K129 [Enum.ItemLineAlignment.Stretch]
      809 SETTABLEKS                       R3 R2 K68 ["ItemLineAlignment"]
      811 SETTABLEKS                       R2 R1 K8 ["properties"]
      813 SETTABLEKS                       R1 R0 K130 ["self-stretch"]
      815 NEWTABLE                         R1 1 0
      817 NEWTABLE                         R2 1 0
      819 GETIMPORT                        R3 K12 [Vector2.new]
      821 LOADN                            R4 0
      822 LOADN                            R5 0
      823 CALL                             R3 2 1
      824 SETTABLEKS                       R3 R2 K14 ["AnchorPoint"]
      826 SETTABLEKS                       R2 R1 K8 ["properties"]
      828 SETTABLEKS                       R1 R0 K131 ["anchor-top-left"]
      830 NEWTABLE                         R1 2 0
      832 LOADK                            R2 K0 ["UIFlexItem"]
      833 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      835 NEWTABLE                         R2 2 0
      837 LOADN                            R3 1
      838 SETTABLEKS                       R3 R2 K34 ["GrowRatio"]
      840 GETIMPORT                        R3 K6 [Enum.UIFlexMode.Custom]
      842 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      844 SETTABLEKS                       R2 R1 K8 ["properties"]
      846 SETTABLEKS                       R1 R0 K132 ["grow-1"]
      848 NEWTABLE                         R1 1 0
      850 NEWTABLE                         R2 1 0
      852 GETIMPORT                        R3 K12 [Vector2.new]
      854 LOADN                            R4 1
      855 LOADN                            R5 1
      856 CALL                             R3 2 1
      857 SETTABLEKS                       R3 R2 K14 ["AnchorPoint"]
      859 SETTABLEKS                       R2 R1 K8 ["properties"]
      861 SETTABLEKS                       R1 R0 K133 ["anchor-bottom-right"]
      863 NEWTABLE                         R1 2 0
      865 LOADK                            R2 K16 ["UIAspectRatioConstraint"]
      866 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      868 NEWTABLE                         R2 1 0
      870 LOADK                            R3 K134 [1.5]
      871 SETTABLEKS                       R3 R2 K18 ["AspectRatio"]
      873 SETTABLEKS                       R2 R1 K8 ["properties"]
      875 SETTABLEKS                       R1 R0 K135 ["aspect-3-2"]
      877 NEWTABLE                         R1 2 0
      879 LOADK                            R2 K0 ["UIFlexItem"]
      880 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      882 NEWTABLE                         R2 2 0
      884 LOADN                            R3 4
      885 SETTABLEKS                       R3 R2 K34 ["GrowRatio"]
      887 GETIMPORT                        R3 K6 [Enum.UIFlexMode.Custom]
      889 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      891 SETTABLEKS                       R2 R1 K8 ["properties"]
      893 SETTABLEKS                       R1 R0 K136 ["grow-4"]
      895 NEWTABLE                         R1 1 0
      897 NEWTABLE                         R2 1 0
      899 GETIMPORT                        R3 K138 [Enum.AutomaticSize.XY]
      901 SETTABLEKS                       R3 R2 K20 ["AutomaticSize"]
      903 SETTABLEKS                       R2 R1 K8 ["properties"]
      905 SETTABLEKS                       R1 R0 K139 ["auto-xy"]
      907 NEWTABLE                         R1 1 0
      909 NEWTABLE                         R2 1 0
      911 GETIMPORT                        R3 K27 [UDim2.new]
      913 LOADN                            R4 0
      914 LOADN                            R5 0
      915 LOADK                            R6 K13 [0.5]
      916 LOADN                            R7 0
      917 CALL                             R3 4 1
      918 SETTABLEKS                       R3 R2 K28 ["Position"]
      920 SETTABLEKS                       R2 R1 K8 ["properties"]
      922 SETTABLEKS                       R1 R0 K140 ["position-center-left"]
      924 NEWTABLE                         R1 2 0
      926 LOADK                            R2 K0 ["UIFlexItem"]
      927 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      929 NEWTABLE                         R2 1 0
      931 GETIMPORT                        R3 K142 [Enum.ItemLineAlignment.Automatic]
      933 SETTABLEKS                       R3 R2 K68 ["ItemLineAlignment"]
      935 SETTABLEKS                       R2 R1 K8 ["properties"]
      937 SETTABLEKS                       R1 R0 K143 ["self-auto"]
      939 NEWTABLE                         R1 2 0
      941 LOADK                            R2 K16 ["UIAspectRatioConstraint"]
      942 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      944 NEWTABLE                         R2 1 0
      946 LOADN                            R3 2
      947 SETTABLEKS                       R3 R2 K18 ["AspectRatio"]
      949 SETTABLEKS                       R2 R1 K8 ["properties"]
      951 SETTABLEKS                       R1 R0 K144 ["aspect-2-1"]
      953 NEWTABLE                         R1 1 0
      955 NEWTABLE                         R2 1 0
      957 GETIMPORT                        R3 K12 [Vector2.new]
      959 LOADN                            R4 1
      960 LOADN                            R5 0
      961 CALL                             R3 2 1
      962 SETTABLEKS                       R3 R2 K14 ["AnchorPoint"]
      964 SETTABLEKS                       R2 R1 K8 ["properties"]
      966 SETTABLEKS                       R1 R0 K145 ["anchor-top-right"]
      968 NEWTABLE                         R1 2 0
      970 LOADK                            R2 K0 ["UIFlexItem"]
      971 SETTABLEKS                       R2 R1 K1 ["pseudo"]
      973 NEWTABLE                         R2 2 0
      975 LOADN                            R3 5
      976 SETTABLEKS                       R3 R2 K2 ["ShrinkRatio"]
      978 GETIMPORT                        R3 K6 [Enum.UIFlexMode.Custom]
      980 SETTABLEKS                       R3 R2 K7 ["FlexMode"]
      982 SETTABLEKS                       R2 R1 K8 ["properties"]
      984 SETTABLEKS                       R1 R0 K146 ["shrink-5"]
      986 NEWTABLE                         R1 2 0
      988 LOADN                            R2 -1
      989 SETTABLEKS                       R2 R1 K81 ["priority"]
      991 NEWTABLE                         R2 1 0
      993 LOADN                            R3 1
      994 SETTABLEKS                       R3 R2 K101 ["BackgroundTransparency"]
      996 SETTABLEKS                       R2 R1 K8 ["properties"]
      998 SETTABLEKS                       R1 R0 K147 ["gui-object-defaults"]
     1000 RETURN                           R0 1
