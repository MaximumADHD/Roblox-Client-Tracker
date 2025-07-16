PROTO_0:
  DUPTABLE R0 K1 [{"tags"}]
  LOADK R1 K2 ["X-Fill FindReplaceAll-Icon FindBarSearchIcon data-testid=FindBarSearchIcon"]
  SETTABLEKS R1 R0 K0 ["tags"]
  RETURN R0 1

PROTO_1:
  NEWTABLE R0 0 3
  DUPTABLE R1 K5 [{"key", "onClick", "enabled", "tooltipText", "tags"}]
  LOADK R2 K6 ["MatchCase"]
  SETTABLEKS R2 R1 K0 ["key"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["enabled"]
  JUMPIFNOT R3 [+4]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K7 ["disable"]
  JUMP [+3]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K8 ["enable"]
  SETTABLEKS R2 R1 K1 ["onClick"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["enabled"]
  SETTABLEKS R2 R1 K2 ["enabled"]
  GETUPVAL R2 1
  LOADK R4 K9 ["WidgetHeader"]
  LOADK R5 K10 ["MatchCaseTooltip"]
  NAMECALL R2 R2 K11 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K3 ["tooltipText"]
  LOADK R2 K12 ["data-testid=CaseSensitiveButton MatchCaseIcon"]
  SETTABLEKS R2 R1 K4 ["tags"]
  DUPTABLE R2 K5 [{"key", "onClick", "enabled", "tooltipText", "tags"}]
  LOADK R3 K13 ["MatchWholeWord"]
  SETTABLEKS R3 R2 K0 ["key"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K2 ["enabled"]
  JUMPIFNOT R4 [+4]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K7 ["disable"]
  JUMP [+3]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K8 ["enable"]
  SETTABLEKS R3 R2 K1 ["onClick"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["enabled"]
  SETTABLEKS R3 R2 K2 ["enabled"]
  GETUPVAL R3 1
  LOADK R5 K9 ["WidgetHeader"]
  LOADK R6 K14 ["MatchWholeWordTooltip"]
  NAMECALL R3 R3 K11 ["getText"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K3 ["tooltipText"]
  LOADK R3 K15 ["data-testid=MatchCaseButton MatchWholeWordIcon"]
  SETTABLEKS R3 R2 K4 ["tags"]
  DUPTABLE R3 K5 [{"key", "onClick", "enabled", "tooltipText", "tags"}]
  LOADK R4 K16 ["RegularExpression"]
  SETTABLEKS R4 R3 K0 ["key"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K2 ["enabled"]
  JUMPIFNOT R5 [+4]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K7 ["disable"]
  JUMP [+3]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K8 ["enable"]
  SETTABLEKS R4 R3 K1 ["onClick"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K2 ["enabled"]
  SETTABLEKS R4 R3 K2 ["enabled"]
  GETUPVAL R4 1
  LOADK R6 K9 ["WidgetHeader"]
  LOADK R7 K17 ["RegExTooltip"]
  NAMECALL R4 R4 K11 ["getText"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K3 ["tooltipText"]
  LOADK R4 K18 ["data-testid=RegexButton RegularExpressionIcon"]
  SETTABLEKS R4 R3 K4 ["tags"]
  SETLIST R0 R1 3 [1]
  RETURN R0 1

PROTO_2:
  NEWTABLE R0 0 2
  DUPTABLE R1 K4 [{"displayText", "text", "icon", "keepIconColor"}]
  GETUPVAL R2 0
  LOADK R4 K5 ["SearchSettingsDropdown"]
  LOADK R5 K6 ["Filter"]
  NAMECALL R2 R2 K7 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K0 ["displayText"]
  LOADK R2 K8 ["showFilter"]
  SETTABLEKS R2 R1 K1 ["text"]
  GETUPVAL R3 1
  JUMPIFNOT R3 [+2]
  LOADK R2 K9 ["CheckboxOnIcon"]
  JUMP [+1]
  LOADK R2 K10 ["CheckboxOffIcon"]
  SETTABLEKS R2 R1 K2 ["icon"]
  GETUPVAL R3 1
  ORK R2 R3 K11 []
  SETTABLEKS R2 R1 K3 ["keepIconColor"]
  DUPTABLE R2 K4 [{"displayText", "text", "icon", "keepIconColor"}]
  GETUPVAL R3 0
  LOADK R5 K5 ["SearchSettingsDropdown"]
  LOADK R6 K12 ["Replace"]
  NAMECALL R3 R3 K7 ["getText"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K0 ["displayText"]
  LOADK R3 K13 ["showReplace"]
  SETTABLEKS R3 R2 K1 ["text"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K13 ["showReplace"]
  JUMPIFNOT R4 [+2]
  LOADK R3 K9 ["CheckboxOnIcon"]
  JUMP [+1]
  LOADK R3 K10 ["CheckboxOffIcon"]
  SETTABLEKS R3 R2 K2 ["icon"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K13 ["showReplace"]
  ORK R3 R4 K11 []
  SETTABLEKS R3 R2 K3 ["keepIconColor"]
  SETLIST R0 R1 2 [1]
  RETURN R0 1

PROTO_3:
  NOT R1 R0
  RETURN R1 1

PROTO_4:
  NOT R1 R0
  RETURN R1 1

PROTO_5:
  JUMPIFNOTEQKS R0 K0 ["showFilter"] [+5]
  GETUPVAL R1 0
  DUPCLOSURE R2 K1 [PROTO_3]
  CALL R1 1 0
  RETURN R0 0
  JUMPIFNOTEQKS R0 K2 ["showReplace"] [+6]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["setShowReplace"]
  DUPCLOSURE R2 K4 [PROTO_4]
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  DUPTABLE R0 K7 [{"Search", "CaseSensitive", "MatchWholeWords", "Regex", "Replace", "MaxResults", "IncludeFilter"}]
  GETUPVAL R1 0
  SETTABLEKS R1 R0 K0 ["Search"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K8 ["enabled"]
  SETTABLEKS R1 R0 K1 ["CaseSensitive"]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K8 ["enabled"]
  SETTABLEKS R1 R0 K2 ["MatchWholeWords"]
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K8 ["enabled"]
  SETTABLEKS R1 R0 K3 ["Regex"]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K9 ["showReplace"]
  JUMPIFNOT R2 [+2]
  GETUPVAL R1 5
  JUMP [+1]
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["Replace"]
  GETUPVAL R2 6
  GETTABLEKS R1 R2 K10 ["MAX_RESULTS"]
  SETTABLEKS R1 R0 K5 ["MaxResults"]
  GETUPVAL R2 7
  JUMPIFNOT R2 [+2]
  GETUPVAL R1 8
  JUMP [+1]
  LOADNIL R1
  SETTABLEKS R1 R0 K6 ["IncludeFilter"]
  RETURN R0 1

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["updateQuery"]
  DUPTABLE R1 K8 [{"Search", "CaseSensitive", "MatchWholeWords", "Regex", "Replace", "MaxResults", "IncludeFilter"}]
  GETUPVAL R2 1
  SETTABLEKS R2 R1 K1 ["Search"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K9 ["enabled"]
  SETTABLEKS R2 R1 K2 ["CaseSensitive"]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K9 ["enabled"]
  SETTABLEKS R2 R1 K3 ["MatchWholeWords"]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K9 ["enabled"]
  SETTABLEKS R2 R1 K4 ["Regex"]
  GETUPVAL R4 5
  GETTABLEKS R3 R4 K10 ["showReplace"]
  JUMPIFNOT R3 [+2]
  GETUPVAL R2 6
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K5 ["Replace"]
  GETUPVAL R3 7
  GETTABLEKS R2 R3 K11 ["MAX_RESULTS"]
  SETTABLEKS R2 R1 K6 ["MaxResults"]
  GETUPVAL R3 8
  JUMPIFNOT R3 [+2]
  GETUPVAL R2 9
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K7 ["IncludeFilter"]
  CALL R0 1 1
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K12 ["resultManager"]
  GETTABLEKS R1 R2 K13 ["setQueryId"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["resultManager"]
  GETTABLEKS R0 R1 K1 ["expandAllFiles"]
  CALL R0 0 0
  GETUPVAL R0 1
  CALL R0 0 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K2 ["disableConfirmationDialog"]
  CALL R0 0 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R0 0
  CALL R0 0 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["disableConfirmationDialog"]
  CALL R0 0 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 1
  CALL R2 0 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["useState"]
  LOADK R4 K2 [""]
  CALL R3 1 2
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K1 ["useState"]
  LOADK R6 K2 [""]
  CALL R5 1 2
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K1 ["useState"]
  LOADK R8 K2 [""]
  CALL R7 1 2
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K3 ["useToggleState"]
  LOADB R10 0
  CALL R9 1 1
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K3 ["useToggleState"]
  LOADB R11 0
  CALL R10 1 1
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K3 ["useToggleState"]
  LOADB R12 0
  CALL R11 1 1
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K1 ["useState"]
  LOADB R13 0
  CALL R12 1 2
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K4 ["useMemo"]
  DUPCLOSURE R15 K5 [PROTO_0]
  NEWTABLE R16 0 0
  CALL R14 2 1
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K4 ["useMemo"]
  NEWCLOSURE R16 P1
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R11
  NEWTABLE R17 0 3
  GETTABLEKS R18 R9 K6 ["enabled"]
  GETTABLEKS R19 R10 K6 ["enabled"]
  GETTABLEKS R20 R11 K6 ["enabled"]
  SETLIST R17 R18 3 [1]
  CALL R15 2 1
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K4 ["useMemo"]
  NEWCLOSURE R17 P2
  CAPTURE VAL R1
  CAPTURE VAL R12
  CAPTURE VAL R0
  NEWTABLE R18 0 2
  MOVE R19 R12
  GETTABLEKS R20 R0 K7 ["showReplace"]
  SETLIST R18 R19 2 [1]
  CALL R16 2 1
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K8 ["useCallback"]
  NEWCLOSURE R18 P3
  CAPTURE VAL R13
  CAPTURE VAL R0
  NEWTABLE R19 0 0
  CALL R17 2 1
  NEWCLOSURE R18 P4
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R0
  CAPTURE VAL R5
  CAPTURE UPVAL U4
  CAPTURE VAL R12
  CAPTURE VAL R7
  GETUPVAL R19 5
  GETUPVAL R21 4
  GETTABLEKS R20 R21 K9 ["SEARCH_QUERY_DELAY_SECONDS"]
  LOADNIL R21
  NEWCLOSURE R22 P5
  CAPTURE UPVAL U6
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R0
  CAPTURE VAL R5
  CAPTURE UPVAL U4
  CAPTURE VAL R12
  CAPTURE VAL R7
  CALL R19 3 1
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K10 ["useEffect"]
  NEWCLOSURE R21 P6
  CAPTURE VAL R0
  CAPTURE VAL R19
  NEWTABLE R22 0 6
  MOVE R23 R3
  MOVE R24 R7
  GETTABLEKS R25 R9 K6 ["enabled"]
  GETTABLEKS R26 R10 K6 ["enabled"]
  GETTABLEKS R27 R11 K6 ["enabled"]
  MOVE R28 R12
  SETLIST R22 R23 6 [1]
  CALL R20 2 0
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K10 ["useEffect"]
  NEWCLOSURE R21 P7
  CAPTURE VAL R19
  CAPTURE VAL R0
  NEWTABLE R22 0 2
  MOVE R23 R5
  GETTABLEKS R24 R0 K7 ["showReplace"]
  SETLIST R22 R23 2 [1]
  CALL R20 2 0
  GETUPVAL R20 7
  LOADK R21 K11 ["Frame"]
  NEWTABLE R22 4 0
  GETTABLEKS R23 R0 K12 ["ZIndex"]
  SETTABLEKS R23 R22 K12 ["ZIndex"]
  LOADN R23 1
  SETTABLEKS R23 R22 K13 ["BackgroundTransparency"]
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K14 ["Change"]
  GETTABLEKS R23 R24 K15 ["AbsoluteSize"]
  GETTABLEKS R24 R0 K16 ["onSearchHeaderSizeChange"]
  SETTABLE R24 R22 R23
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K17 ["Tag"]
  LOADK R24 K18 ["X-FitY X-Column X-Top data-testid=WidgetHeaderFrame"]
  SETTABLE R24 R22 R23
  DUPTABLE R23 K22 [{"SearchHeader", "IncludeFilterHeader", "ReplaceHeader"}]
  GETUPVAL R24 7
  GETUPVAL R25 8
  DUPTABLE R26 K32 [{"LayoutOrder", "searchBarLeftIcon", "onSearchbarTextChanged", "searchBarPlaceholderText", "searchBarToggleOptions", "settingsDropdownItemData", "onSettingsDropdownItemClicked", "Visible", "dropdownOverlay"}]
  MOVE R27 R2
  CALL R27 0 1
  SETTABLEKS R27 R26 K23 ["LayoutOrder"]
  SETTABLEKS R14 R26 K24 ["searchBarLeftIcon"]
  SETTABLEKS R4 R26 K25 ["onSearchbarTextChanged"]
  LOADK R29 K33 ["SearchSection"]
  LOADK R30 K34 ["PlaceholderText"]
  NAMECALL R27 R1 K35 ["getText"]
  CALL R27 3 1
  SETTABLEKS R27 R26 K26 ["searchBarPlaceholderText"]
  SETTABLEKS R15 R26 K27 ["searchBarToggleOptions"]
  SETTABLEKS R16 R26 K28 ["settingsDropdownItemData"]
  SETTABLEKS R17 R26 K29 ["onSettingsDropdownItemClicked"]
  LOADB R27 1
  SETTABLEKS R27 R26 K30 ["Visible"]
  GETTABLEKS R27 R0 K31 ["dropdownOverlay"]
  SETTABLEKS R27 R26 K31 ["dropdownOverlay"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K19 ["SearchHeader"]
  GETUPVAL R24 7
  GETUPVAL R25 8
  DUPTABLE R26 K36 [{"LayoutOrder", "onSearchbarTextChanged", "searchBarPlaceholderText", "Visible", "dropdownOverlay"}]
  MOVE R27 R2
  CALL R27 0 1
  SETTABLEKS R27 R26 K23 ["LayoutOrder"]
  SETTABLEKS R8 R26 K25 ["onSearchbarTextChanged"]
  LOADK R29 K37 ["FilterSection"]
  LOADK R30 K34 ["PlaceholderText"]
  NAMECALL R27 R1 K35 ["getText"]
  CALL R27 3 1
  SETTABLEKS R27 R26 K26 ["searchBarPlaceholderText"]
  SETTABLEKS R12 R26 K30 ["Visible"]
  GETTABLEKS R27 R0 K31 ["dropdownOverlay"]
  SETTABLEKS R27 R26 K31 ["dropdownOverlay"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K20 ["IncludeFilterHeader"]
  GETUPVAL R24 7
  GETUPVAL R25 8
  DUPTABLE R26 K36 [{"LayoutOrder", "onSearchbarTextChanged", "searchBarPlaceholderText", "Visible", "dropdownOverlay"}]
  MOVE R27 R2
  CALL R27 0 1
  SETTABLEKS R27 R26 K23 ["LayoutOrder"]
  SETTABLEKS R6 R26 K25 ["onSearchbarTextChanged"]
  LOADK R29 K38 ["SearchSettingsDropdown"]
  LOADK R30 K39 ["Replace"]
  NAMECALL R27 R1 K35 ["getText"]
  CALL R27 3 1
  SETTABLEKS R27 R26 K26 ["searchBarPlaceholderText"]
  GETTABLEKS R27 R0 K7 ["showReplace"]
  SETTABLEKS R27 R26 K30 ["Visible"]
  GETTABLEKS R27 R0 K31 ["dropdownOverlay"]
  SETTABLEKS R27 R26 K31 ["dropdownOverlay"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K21 ["ReplaceHeader"]
  CALL R20 3 -1
  RETURN R20 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["FindReplaceAll"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Commands"]
  GETTABLEKS R2 R3 K8 ["FindReplace"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K9 ["Packages"]
  GETTABLEKS R4 R5 K11 ["ReactUtils"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K9 ["Packages"]
  GETTABLEKS R5 R6 K12 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R6 R4 K13 ["ContextServices"]
  GETTABLEKS R5 R6 K14 ["Localization"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K9 ["Packages"]
  GETTABLEKS R8 R9 K11 ["ReactUtils"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K15 ["createNextOrder"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R0 K9 ["Packages"]
  GETTABLEKS R9 R10 K11 ["ReactUtils"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K16 ["useDelayedActionHandler"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K6 ["Src"]
  GETTABLEKS R10 R11 K17 ["Components"]
  GETTABLEKS R9 R10 K18 ["SearchBox"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K6 ["Src"]
  GETTABLEKS R11 R12 K19 ["Util"]
  GETTABLEKS R10 R11 K20 ["Constants"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R12 R0 K6 ["Src"]
  GETTABLEKS R11 R12 K21 ["Types"]
  CALL R10 1 1
  GETTABLEKS R11 R2 K22 ["createElement"]
  DUPCLOSURE R12 K23 [PROTO_10]
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R11
  CAPTURE VAL R8
  RETURN R12 1
