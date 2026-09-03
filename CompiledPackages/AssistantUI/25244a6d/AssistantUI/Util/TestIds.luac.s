PROTO_0:
        0 LOADK                            R2 K0 ["Assistant-Skills-Row-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R2 K0 ["Assistant-Skills-Toggle-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_2:
        0 LOADK                            R2 K0 ["Assistant-IntegrationItem-ToolPill-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_3:
        0 LOADK                            R2 K0 ["Assistant-ScopePermissions-PresetItem-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_4:
        0 LOADK                            R2 K0 ["Assistant-ScopePermissions-ScopeCheckbox-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_5:
        0 LOADK                            R2 K0 ["Assistant-QuickConnect-Toggle-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_6:
        0 LOADK                            R2 K0 ["Assistant-QuickConnect-CommandLabel-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_7:
        0 LOADK                            R2 K0 ["Assistant-QuickConnect-CommandCopy-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_8:
        0 LOADK                            R2 K0 ["Assistant-ProviderCheckbox-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_9:
        0 LOADK                            R2 K0 ["Assistant-APIKey-Display-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_10:
        0 LOADK                            R2 K0 ["Assistant-APIKey-EditButton-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_11:
        0 LOADK                            R2 K0 ["Assistant-APIKey-Input-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_12:
        0 LOADK                            R2 K0 ["Assistant-APIKey-SaveButton-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_13:
        0 LOADK                            R2 K0 ["Assistant-APIKey-CancelButton-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_14:
        0 LOADK                            R2 K0 ["Assistant-RobuxPackageModal-PackageOption-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_15:
        0 LOADK                            R2 K0 ["Assistant-PropRow-Row-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_16:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 FASTCALL1                        TYPEOF R5 ; [+3]
        5 MOVE                             R7 R5
        6 GETIMPORT                        R6 K1 [typeof]
        8 CALL                             R6 1 1
        9 JUMPIFNOTEQKS                    R6 K2 ["table"] ; [+5]
       11 GETUPVAL                         R6 0
       12 MOVE                             R7 R5
       13 CALL                             R6 1 0
       14 JUMP                             ; [+49]
       15 LOADNIL                          R6
       16 FASTCALL1                        TYPEOF R5 ; [+3]
       17 MOVE                             R8 R5
       18 GETIMPORT                        R7 K1 [typeof]
       20 CALL                             R7 1 1
       21 JUMPIFNOTEQKS                    R7 K3 ["string"] ; [+3]
       23 MOVE                             R6 R5
       24 JUMP                             ; [+24]
       25 FASTCALL1                        TYPEOF R5 ; [+3]
       26 MOVE                             R8 R5
       27 GETIMPORT                        R7 K1 [typeof]
       29 CALL                             R7 1 1
       30 JUMPIFNOTEQKS                    R7 K4 ["function"] ; [+5]
       32 MOVE                             R7 R5
       33 CALL                             R7 0 1
       34 MOVE                             R6 R7
       35 JUMP                             ; [+13]
       36 GETIMPORT                        R7 K6 [error]
       38 LOADK                            R9 K7 ["Unexpected value type: %*"]
       39 FASTCALL1                        TYPEOF R5 ; [+3]
       40 MOVE                             R12 R5
       41 GETIMPORT                        R11 K1 [typeof]
       43 CALL                             R11 1 1
       44 NAMECALL                         R9 R9 K8 ["format"]
       46 CALL                             R9 2 1
       47 MOVE                             R8 R9
       48 CALL                             R7 1 0
       49 GETUPVAL                         R8 1
       50 GETTABLE                         R7 R8 R6
       51 JUMPIFNOT                        R7 ; [+9]
       52 GETIMPORT                        R7 K6 [error]
       54 LOADK                            R9 K9 ["Duplicate test id found: %*"]
       55 MOVE                             R11 R6
       56 NAMECALL                         R9 R9 K8 ["format"]
       58 CALL                             R9 2 1
       59 MOVE                             R8 R9
       60 CALL                             R7 1 0
       61 GETUPVAL                         R7 1
       62 LOADB                            R8 1
       63 SETTABLE                         R8 R7 R6
       64 FORGLOOP                         R1 2 ; [-61]
       66 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 64 0
        3 DUPTABLE                         R1 K12 [{[1] = "Assistant-Header-ToggleThreadsMenu", ["SettingsButton"] = "Assistant-Header-SettingsButton", ["SettingsContent"] = "Assistant-Header-SettingsContent", ["VersionMismatchIcon"] = "Assistant-Header-VersionMismatchIcon", ["HarnessSplitTag"] = "Assistant-Header-HarnessSplitTag", ["AcpSessionIdTag"] = "Assistant-Header-AcpSessionIdTag"}]
        4 SETTABLEKS                       R1 R0 K13 ["Header"]
        6 DUPTABLE                         R1 K20 [{["Container"] = "Assistant-ThreadsMenu-Container", ["ExistingThreadButton"] = "Assistant-ThreadsMenu-ExistingThreadButton", ["AddThreadButton"] = "Assistant-ThreadsMenu-AddThreadButton"}]
        7 SETTABLEKS                       R1 R0 K21 ["ThreadsMenu"]
        9 DUPTABLE                         R1 K28 [{["OptionsButton"] = "Assistant-ThreadEntry-OptionsButton", ["RenameInput"] = "Assistant-ThreadEntry-RenameInput", ["SharedWithBuildTag"] = "Assistant-ThreadEntry-SharedWithBuildTag"}]
       10 SETTABLEKS                       R1 R0 K29 ["ThreadEntry"]
       12 DUPTABLE                         R1 K31 [{["Container"] = "Assistant-ThreadOptionsMenu-Container"}]
       13 SETTABLEKS                       R1 R0 K32 ["ThreadOptionsMenu"]
       15 DUPTABLE                         R1 K47 [{["Container"] = "Assistant-InputArea-Container", ["SendButton"] = "Assistant-InputArea-SendButton", ["StopButton"] = "Assistant-InputArea-StopButton", ["AttachImageButton"] = "Assistant-InputArea-AttachImageButton", ["AttachedImagesPreview"] = "Assistant-InputArea-AttachedImagesPreview", ["AssistantModeDropdown"] = "Assistant-InputArea-AssistantModeDropdown", ["AssistantModeDropdownMenu"] = "Assistant-InputArea-AssistantModeDropdownMenu", ["Footer"]}]
       16 DUPTABLE                         R2 K51 [{["Container"] = "Assistant-InputArea-Footer-Container", ["Icon"] = "Assistant-InputArea-Footer-Icon"}]
       17 SETTABLEKS                       R2 R1 K46 ["Footer"]
       19 SETTABLEKS                       R1 R0 K52 ["InputArea"]
       21 DUPTABLE                         R1 K60 [{["Container"] = "Assistant-MessageActions-Container", ["ThumbsUp"] = "Assistant-MessageActions-ThumbsUp", ["ThumbsDown"] = "Assistant-MessageActions-ThumbsDown", ["Retry"] = "Assistant-MessageActions-Retry"}]
       22 SETTABLEKS                       R1 R0 K61 ["MessageActions"]
       24 DUPTABLE                         R1 K71 [{["Container"] = "Assistant-FeedbackView-Container", ["Dropdown"] = "Assistant-FeedbackView-Dropdown", ["TextArea"] = "Assistant-FeedbackView-TextArea", ["Close"] = "Assistant-FeedbackView-Close", ["Submit"] = "Assistant-FeedbackView-Submit"}]
       25 SETTABLEKS                       R1 R0 K72 ["FeedbackView"]
       27 LOADK                            R1 K73 ["Assistant-GenerationIndicator"]
       28 SETTABLEKS                       R1 R0 K74 ["GenerationIndicator"]
       30 LOADK                            R1 K75 ["Assistant-ModelQualityWarning"]
       31 SETTABLEKS                       R1 R0 K76 ["ModelQualityWarning"]
       33 DUPTABLE                         R1 K79 [{["Button"] = "Assistant-ServerManagement-Button"}]
       34 SETTABLEKS                       R1 R0 K80 ["ServerManagement"]
       36 DUPTABLE                         R1 K85 [{["Checkbox"] = "Assistant-McpServer-Checkbox", ["CheckboxInput"] = "Assistant-McpServer-Checkbox--container"}]
       37 SETTABLEKS                       R1 R0 K86 ["McpServer"]
       39 DUPTABLE                         R1 K89 [{["Container"] = "Assistant-SlashCommandMenu-Container", ["Item"]}]
       40 DUPTABLE                         R2 K93 [{["Container"] = "Assistant-SlashCommandMenu-Item-Container", ["Command"] = "Assistant-SlashCommandMenu-Item-Command"}]
       41 SETTABLEKS                       R2 R1 K88 ["Item"]
       43 SETTABLEKS                       R1 R0 K94 ["SlashCommandMenu"]
       45 DUPTABLE                         R1 K97 [{["Container"] = "Assistant-ToolMenuView-Container", ["Option"]}]
       46 DUPTABLE                         R2 K100 [{["Container"] = "Assistant-ToolMenuView-Option-Container", ["Checkbox"] = "Assistant-ToolMenuView-Option-Checkbox"}]
       47 SETTABLEKS                       R2 R1 K96 ["Option"]
       49 SETTABLEKS                       R1 R0 K101 ["ToolMenuView"]
       51 DUPTABLE                         R1 K104 [{["Container"] = "Assistant-ModelPicker-Container", ["Dropdown"] = "Assistant-ModelPicker-Dropdown"}]
       52 SETTABLEKS                       R1 R0 K105 ["ModelPicker"]
       54 DUPTABLE                         R1 K109 [{["Root"] = "Assistant-Carousel-Root", ["Container"] = "Assistant-Carousel-Container"}]
       55 SETTABLEKS                       R1 R0 K110 ["Carousel"]
       57 DUPTABLE                         R1 K114 [{["Root"] = "Assistant-CarouselItem-Root", ["Selected"] = "Assistant-CarouselItem-Selected"}]
       58 SETTABLEKS                       R1 R0 K115 ["CarouselItem"]
       60 DUPTABLE                         R1 K121 [{["Continue"] = "Assistant-Alert-Continue", ["EditApiKeys"] = "Assistant-Alert-EditApiKeys", ["Close"] = "Assistant-Alert-Close"}]
       61 SETTABLEKS                       R1 R0 K122 ["Alert"]
       63 DUPTABLE                         R1 K127 [{["Image"] = "Assistant-ImageContent-Image", ["Expand"] = "Assistant-ImageContent-Expand"}]
       64 SETTABLEKS                       R1 R0 K128 ["ImageContent"]
       66 DUPTABLE                         R1 K130 [{["Expand"] = "Assistant-AssetInsert-Expand"}]
       67 SETTABLEKS                       R1 R0 K131 ["AssetInsert"]
       69 DUPTABLE                         R1 K135 [{["Expand"] = "Assistant-AssetSearch-Expand", ["Tile"] = "Assistant-AssetSearch-Tile"}]
       70 SETTABLEKS                       R1 R0 K136 ["AssetSearch"]
       72 DUPTABLE                         R1 K138 [{["Expand"] = "Assistant-AssetVariation-Expand"}]
       73 SETTABLEKS                       R1 R0 K139 ["AssetVariation"]
       75 DUPTABLE                         R1 K144 [{["SubmitButton"] = "Assistant-AskInput-SubmitButton", ["CancelButton"] = "Assistant-AskInput-CancelButton"}]
       76 SETTABLEKS                       R1 R0 K145 ["AskInput"]
       78 DUPTABLE                         R1 K151 [{["Expand"] = "Assistant-MaterialGen-Expand", ["StudsPerTileValueBar"] = "Assistant-MaterialGen-StudsPerTileValueBar", ["OrganicPatternToggle"] = "Assistant-MaterialGen-OrganicPatternToggle"}]
       79 SETTABLEKS                       R1 R0 K152 ["MaterialGen"]
       81 DUPTABLE                         R1 K160 [{["Expand"] = "Assistant-MeshGen-Expand", ["PreviewImage"] = "Assistant-MeshGen-PreviewImage", ["UseSelection"] = "Assistant-MeshGen-UseSelection", ["MaxTriangles"] = "Assistant-MeshGen-MaxTriangles"}]
       82 SETTABLEKS                       R1 R0 K161 ["MeshGen"]
       84 DUPTABLE                         R1 K163 [{["Expand"] = "Assistant-SegmentMesh-Expand"}]
       85 SETTABLEKS                       R1 R0 K164 ["SegmentMesh"]
       87 DUPTABLE                         R1 K167 [{["Expand"] = "Assistant-TextureGen-Expand", ["PreviewImage"] = "Assistant-TextureGen-PreviewImage"}]
       88 SETTABLEKS                       R1 R0 K168 ["TextureGen"]
       90 DUPTABLE                         R1 K171 [{["CloudIcon"] = "Assistant-GenericTool-CloudIcon"}]
       91 SETTABLEKS                       R1 R0 K172 ["GenericTool"]
       93 DUPTABLE                         R1 K175 [{["Expand"] = "Assistant-PrimitiveGen-Expand", ["PreviewImage"] = "Assistant-PrimitiveGen-PreviewImage"}]
       94 SETTABLEKS                       R1 R0 K176 ["PrimitiveGen"]
       96 DUPTABLE                         R1 K185 [{["Expand"] = "Assistant-RunCode-Expand", ["CloudIcon"] = "Assistant-RunCode-CloudIcon", ["Copy"] = "Assistant-RunCode-Copy", ["Run"] = "Assistant-RunCode-Run", ["Stop"] = "Assistant-RunCode-Stop"}]
       97 SETTABLEKS                       R1 R0 K186 ["RunCode"]
       99 DUPTABLE                         R1 K188 [{["Expand"] = "Assistant-Thinking-Expand"}]
      100 SETTABLEKS                       R1 R0 K189 ["Thinking"]
      102 DUPTABLE                         R1 K198 [{["Warning"] = "Assistant-ToolConfirmation-Warning", ["Accept"] = "Assistant-ToolConfirmation-Accept", ["Reject"] = "Assistant-ToolConfirmation-Reject", ["AlwaysAccept"] = "Assistant-ToolConfirmation-AlwaysAccept"}]
      103 SETTABLEKS                       R1 R0 K199 ["ToolConfirmation"]
      105 DUPTABLE                         R1 K207 [{["Warning"] = "Assistant-ScriptChangeConfirmation-Warning", ["ReviewEach"] = "Assistant-ScriptChangeConfirmation-ReviewEach", ["AcceptAllPrompt"] = "Assistant-ScriptChangeConfirmation-AcceptAllPrompt", ["AcceptAllSession"] = "Assistant-ScriptChangeConfirmation-AcceptAllSession"}]
      106 SETTABLEKS                       R1 R0 K208 ["ScriptChangeConfirmation"]
      108 DUPTABLE                         R1 K211 [{["Icon"] = "Assistant-Summarized-Icon", ["Expand"] = "Assistant-Summarized-Expand"}]
      109 SETTABLEKS                       R1 R0 K212 ["Summarized"]
      111 DUPTABLE                         R1 K215 [{["Title"] = "Assistant-ReadFile-Title"}]
      112 SETTABLEKS                       R1 R0 K216 ["ReadFile"]
      114 DUPTABLE                         R1 K224 [{["Expand"] = "Assistant-InputRequested-Expand", ["ReviveButton"] = "Assistant-InputRequested-ReviveButton", ["CloseButton"] = "Assistant-InputRequested-CloseButton", ["SelectedImage"] = "Assistant-InputRequested-SelectedImage"}]
      115 SETTABLEKS                       R1 R0 K225 ["InputRequested"]
      117 DUPTABLE                         R1 K234 [{["StepperPrev"] = "Assistant-QuestionAnswer-StepperPrev", ["StepperNext"] = "Assistant-QuestionAnswer-StepperNext", ["ConfirmCheckbox"] = "Assistant-QuestionAnswer-ConfirmCheckbox", ["Dismiss"] = "Assistant-QuestionAnswer-Dismiss"}]
      118 SETTABLEKS                       R1 R0 K235 ["QuestionAnswer"]
      120 DUPTABLE                         R1 K242 [{["AddIntegrationDialog"] = "Assistant-IntegrationMenu-AddIntegrationDialog", ["TabContent"] = "Assistant-IntegrationMenu-TabContent", ["EmptyState"] = "Assistant-IntegrationMenu-EmptyState"}]
      121 SETTABLEKS                       R1 R0 K243 ["IntegrationMenu"]
      123 DUPTABLE                         R1 K261 [{["TabContent"] = "Assistant-Skills-TabContent", ["CreateNewButton"] = "Assistant-Skills-CreateNewButton", ["CreateFromTextButton"] = "Assistant-Skills-CreateFromTextButton", ["RefreshButton"] = "Assistant-Skills-RefreshButton", ["UploadButton"] = "Assistant-Skills-UploadButton", ["PersonalGroup"] = "Assistant-Skills-PersonalGroup", ["RobloxGroup"] = "Assistant-Skills-RobloxGroup", ["Row"], ["Toggle"], ["CreateModal"], ["DetailPane"]}]
      124 DUPCLOSURE                       R2 K262 [PROTO_0]
      125 SETTABLEKS                       R2 R1 K257 ["Row"]
      127 DUPCLOSURE                       R2 K263 [PROTO_1]
      128 SETTABLEKS                       R2 R1 K258 ["Toggle"]
      130 DUPTABLE                         R2 K272 [{["Container"] = "Assistant-Skills-CreateModal-Container", ["NameInput"] = "Assistant-Skills-CreateModal-NameInput", ["DescriptionInput"] = "Assistant-Skills-CreateModal-DescriptionInput", ["CreateButton"] = "Assistant-Skills-CreateModal-CreateButton", ["CancelButton"] = "Assistant-Skills-CreateModal-CancelButton"}]
      131 SETTABLEKS                       R2 R1 K259 ["CreateModal"]
      133 DUPTABLE                         R2 K284 [{["Container"] = "Assistant-Skills-DetailPane-Container", ["Empty"] = "Assistant-Skills-DetailPane-Empty", ["SourceUri"] = "Assistant-Skills-DetailPane-SourceUri", ["OpenButton"] = "Assistant-Skills-DetailPane-OpenButton", ["DuplicateButton"] = "Assistant-Skills-DetailPane-DuplicateButton", ["DeleteButton"] = "Assistant-Skills-DetailPane-DeleteButton"}]
      134 SETTABLEKS                       R2 R1 K260 ["DetailPane"]
      136 SETTABLEKS                       R1 R0 K285 ["Skills"]
      138 DUPTABLE                         R1 K293 [{["Dialog"] = "Assistant-IntegrationItem-Dialog", ["Header"] = "Assistant-IntegrationItem-Header", ["ToolsContainer"] = "Assistant-IntegrationItem-ToolsContainer", ["ToolPill"], ["Actions"]}]
      139 DUPCLOSURE                       R2 K294 [PROTO_2]
      140 SETTABLEKS                       R2 R1 K291 ["ToolPill"]
      142 DUPTABLE                         R2 K300 [{["Toggle"] = "Assistant-IntegrationItem-Actions-Toggle", ["OverflowButton"] = "Assistant-IntegrationItem-Actions-OverflowButton", ["OverflowContent"] = "Assistant-IntegrationItem-Actions-OverflowContent"}]
      143 SETTABLEKS                       R2 R1 K292 ["Actions"]
      145 SETTABLEKS                       R1 R0 K301 ["IntegrationItem"]
      147 DUPTABLE                         R1 K311 [{["Toggle"] = "Assistant-McpSetup-Toggle", ["StartupCommandLabel"] = "Assistant-McpSetup-StartupCommandLabel", ["JsonConfigLabel"] = "Assistant-McpSetup-JsonConfigLabel", ["StartupCommandCopy"] = "Assistant-McpSetup-StartupCommandCopy", ["JsonConfigCopy"] = "Assistant-McpSetup-JsonConfigCopy"}]
      148 SETTABLEKS                       R1 R0 K312 ["McpSetup"]
      150 DUPTABLE                         R1 K318 [{["Container"] = "Assistant-ScopePermissions-Container", ["PresetGroup"] = "Assistant-ScopePermissions-PresetGroup", ["PresetItem"], ["ScopeCheckbox"]}]
      151 DUPCLOSURE                       R2 K319 [PROTO_3]
      152 SETTABLEKS                       R2 R1 K316 ["PresetItem"]
      154 DUPCLOSURE                       R2 K320 [PROTO_4]
      155 SETTABLEKS                       R2 R1 K317 ["ScopeCheckbox"]
      157 SETTABLEKS                       R1 R0 K321 ["ScopePermissions"]
      159 DUPTABLE                         R1 K326 [{["Section"] = "Assistant-QuickConnect-Section", ["Toggle"], ["CommandLabel"], ["CommandCopy"]}]
      160 DUPCLOSURE                       R2 K327 [PROTO_5]
      161 SETTABLEKS                       R2 R1 K258 ["Toggle"]
      163 DUPCLOSURE                       R2 K328 [PROTO_6]
      164 SETTABLEKS                       R2 R1 K324 ["CommandLabel"]
      166 DUPCLOSURE                       R2 K329 [PROTO_7]
      167 SETTABLEKS                       R2 R1 K325 ["CommandCopy"]
      169 SETTABLEKS                       R1 R0 K330 ["QuickConnect"]
      171 DUPCLOSURE                       R1 K331 [PROTO_8]
      172 SETTABLEKS                       R1 R0 K332 ["ProviderCheckbox"]
      174 DUPTABLE                         R1 K337 [{"Display", "EditButton", "Input", "SaveButton", "CancelButton"}]
      175 DUPCLOSURE                       R2 K338 [PROTO_9]
      176 SETTABLEKS                       R2 R1 K333 ["Display"]
      178 DUPCLOSURE                       R2 K339 [PROTO_10]
      179 SETTABLEKS                       R2 R1 K334 ["EditButton"]
      181 DUPCLOSURE                       R2 K340 [PROTO_11]
      182 SETTABLEKS                       R2 R1 K335 ["Input"]
      184 DUPCLOSURE                       R2 K341 [PROTO_12]
      185 SETTABLEKS                       R2 R1 K336 ["SaveButton"]
      187 DUPCLOSURE                       R2 K342 [PROTO_13]
      188 SETTABLEKS                       R2 R1 K142 ["CancelButton"]
      190 SETTABLEKS                       R1 R0 K343 ["APIKey"]
      192 DUPTABLE                         R1 K347 [{["Container"] = "Assistant-AttachedImagePreview-Container", ["Remove"] = "Assistant-AttachedImagePreview-Remove"}]
      193 SETTABLEKS                       R1 R0 K348 ["AttachedImagePreview"]
      195 DUPTABLE                         R1 K360 [{["Header"] = "Assistant-DailyUsage-Header", ["LimitDecreaseButton"] = "Assistant-DailyUsage-LimitDecreaseButton", ["LimitIncreaseButton"] = "Assistant-DailyUsage-LimitIncreaseButton", ["UsageBar"] = "Assistant-DailyUsage-UsageBar", ["Loading"] = "Assistant-DailyUsage-Loading", ["BuyRobuxButton"] = "Assistant-DailyUsage-BuyRobuxButton"}]
      196 SETTABLEKS                       R1 R0 K361 ["DailyUsage"]
      198 DUPTABLE                         R1 K367 [{["Container"] = "Assistant-RobuxPackageModal-Container", ["BuyButton"] = "Assistant-RobuxPackageModal-BuyButton", ["Loading"] = "Assistant-RobuxPackageModal-Loading", ["PackageOption"]}]
      199 DUPCLOSURE                       R2 K368 [PROTO_14]
      200 SETTABLEKS                       R2 R1 K366 ["PackageOption"]
      202 SETTABLEKS                       R1 R0 K369 ["RobuxPackageModal"]
      204 DUPTABLE                         R1 K372 [{["InfoTooltip"] = "Assistant-PropRow-InfoTooltip", ["Row"]}]
      205 DUPCLOSURE                       R2 K373 [PROTO_15]
      206 SETTABLEKS                       R2 R1 K257 ["Row"]
      208 SETTABLEKS                       R1 R0 K374 ["PropertyRow"]
      210 DUPTABLE                         R1 K388 [{["SuggestCheckbox"] = "Assistant-SegPropRow-SuggestCheckbox", ["RefreshButton"] = "Assistant-SegPropRow-RefreshButton", ["WarningToggle"] = "Assistant-PropRow-WarningToggle", ["CancelButton"] = "Assistant-PropRow-CancelButton", ["SuggestButton"] = "Assistant-PropRow-SuggestButton", ["UploadButton"] = "Assistant-PropRow-UploadButton", ["DeletePillButton"] = "Assistant-PropRow-DeletePillButton", ["BooleanCheckbox"] = "Assistant-PropRow-BooleanCheckbox"}]
      211 SETTABLEKS                       R1 R0 K389 ["SegmentationPropertyRow"]
      213 GETIMPORT                        R1 K391 [pcall]
      215 GETIMPORT                        R2 K393 [game]
      217 GETTABLEKS                       R2 R2 K394 ["GetService"]
      219 GETIMPORT                        R3 K393 [game]
      221 LOADK                            R4 K395 ["ProcessService"]
      222 CALL                             R1 3 1
      223 JUMPIFNOT                        R1 ; [+8]
      224 NEWTABLE                         R2 0 0
      226 DUPCLOSURE                       R3 K396 [PROTO_16]
      227 CAPTURE                          VAL R3
      228 CAPTURE                          VAL R2
      229 MOVE                             R4 R3
      230 MOVE                             R5 R0
      231 CALL                             R4 1 0
      232 RETURN                           R0 1
