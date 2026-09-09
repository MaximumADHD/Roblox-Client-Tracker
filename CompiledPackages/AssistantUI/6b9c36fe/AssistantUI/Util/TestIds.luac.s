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
       21 DUPTABLE                         R1 K62 [{["Container"] = "Assistant-MessageActions-Container", ["ThumbsUp"] = "Assistant-MessageActions-ThumbsUp", ["ThumbsDown"] = "Assistant-MessageActions-ThumbsDown", ["Copy"] = "Assistant-MessageActions-Copy", ["Retry"] = "Assistant-MessageActions-Retry"}]
       22 SETTABLEKS                       R1 R0 K63 ["MessageActions"]
       24 DUPTABLE                         R1 K66 [{["Bubble"] = "Assistant-UserMessage-Bubble"}]
       25 SETTABLEKS                       R1 R0 K67 ["UserMessage"]
       27 DUPTABLE                         R1 K77 [{["Container"] = "Assistant-FeedbackView-Container", ["Dropdown"] = "Assistant-FeedbackView-Dropdown", ["TextArea"] = "Assistant-FeedbackView-TextArea", ["Close"] = "Assistant-FeedbackView-Close", ["Submit"] = "Assistant-FeedbackView-Submit"}]
       28 SETTABLEKS                       R1 R0 K78 ["FeedbackView"]
       30 LOADK                            R1 K79 ["Assistant-GenerationIndicator"]
       31 SETTABLEKS                       R1 R0 K80 ["GenerationIndicator"]
       33 LOADK                            R1 K81 ["Assistant-ModelQualityWarning"]
       34 SETTABLEKS                       R1 R0 K82 ["ModelQualityWarning"]
       36 DUPTABLE                         R1 K85 [{["Button"] = "Assistant-ServerManagement-Button"}]
       37 SETTABLEKS                       R1 R0 K86 ["ServerManagement"]
       39 DUPTABLE                         R1 K91 [{["Checkbox"] = "Assistant-McpServer-Checkbox", ["CheckboxInput"] = "Assistant-McpServer-Checkbox--container"}]
       40 SETTABLEKS                       R1 R0 K92 ["McpServer"]
       42 DUPTABLE                         R1 K95 [{["Container"] = "Assistant-SlashCommandMenu-Container", ["Item"]}]
       43 DUPTABLE                         R2 K99 [{["Container"] = "Assistant-SlashCommandMenu-Item-Container", ["Command"] = "Assistant-SlashCommandMenu-Item-Command"}]
       44 SETTABLEKS                       R2 R1 K94 ["Item"]
       46 SETTABLEKS                       R1 R0 K100 ["SlashCommandMenu"]
       48 DUPTABLE                         R1 K103 [{["Container"] = "Assistant-ToolMenuView-Container", ["Option"]}]
       49 DUPTABLE                         R2 K106 [{["Container"] = "Assistant-ToolMenuView-Option-Container", ["Checkbox"] = "Assistant-ToolMenuView-Option-Checkbox"}]
       50 SETTABLEKS                       R2 R1 K102 ["Option"]
       52 SETTABLEKS                       R1 R0 K107 ["ToolMenuView"]
       54 DUPTABLE                         R1 K110 [{["Container"] = "Assistant-ModelPicker-Container", ["Dropdown"] = "Assistant-ModelPicker-Dropdown"}]
       55 SETTABLEKS                       R1 R0 K111 ["ModelPicker"]
       57 DUPTABLE                         R1 K115 [{["Root"] = "Assistant-Carousel-Root", ["Container"] = "Assistant-Carousel-Container"}]
       58 SETTABLEKS                       R1 R0 K116 ["Carousel"]
       60 DUPTABLE                         R1 K120 [{["Root"] = "Assistant-CarouselItem-Root", ["Selected"] = "Assistant-CarouselItem-Selected"}]
       61 SETTABLEKS                       R1 R0 K121 ["CarouselItem"]
       63 DUPTABLE                         R1 K127 [{["Continue"] = "Assistant-Alert-Continue", ["EditApiKeys"] = "Assistant-Alert-EditApiKeys", ["Close"] = "Assistant-Alert-Close"}]
       64 SETTABLEKS                       R1 R0 K128 ["Alert"]
       66 DUPTABLE                         R1 K133 [{["Image"] = "Assistant-ImageContent-Image", ["Expand"] = "Assistant-ImageContent-Expand"}]
       67 SETTABLEKS                       R1 R0 K134 ["ImageContent"]
       69 DUPTABLE                         R1 K136 [{["Expand"] = "Assistant-AssetInsert-Expand"}]
       70 SETTABLEKS                       R1 R0 K137 ["AssetInsert"]
       72 DUPTABLE                         R1 K141 [{["Expand"] = "Assistant-AssetSearch-Expand", ["Tile"] = "Assistant-AssetSearch-Tile"}]
       73 SETTABLEKS                       R1 R0 K142 ["AssetSearch"]
       75 DUPTABLE                         R1 K144 [{["Expand"] = "Assistant-AssetVariation-Expand"}]
       76 SETTABLEKS                       R1 R0 K145 ["AssetVariation"]
       78 DUPTABLE                         R1 K154 [{["SubmitButton"] = "Assistant-AskInput-SubmitButton", ["CancelButton"] = "Assistant-AskInput-CancelButton", ["StepperPrev"] = "Assistant-AskInput-StepperPrev", ["StepperNext"] = "Assistant-AskInput-StepperNext"}]
       79 SETTABLEKS                       R1 R0 K155 ["AskInput"]
       81 DUPTABLE                         R1 K159 [{["Expand"] = "Assistant-AvatarAutoSetup-Expand", ["FailureReason"] = "Assistant-AvatarAutoSetup-FailureReason"}]
       82 SETTABLEKS                       R1 R0 K160 ["AvatarAutoSetup"]
       84 DUPTABLE                         R1 K166 [{["Expand"] = "Assistant-MaterialGen-Expand", ["StudsPerTileValueBar"] = "Assistant-MaterialGen-StudsPerTileValueBar", ["OrganicPatternToggle"] = "Assistant-MaterialGen-OrganicPatternToggle"}]
       85 SETTABLEKS                       R1 R0 K167 ["MaterialGen"]
       87 DUPTABLE                         R1 K175 [{["Expand"] = "Assistant-MeshGen-Expand", ["PreviewImage"] = "Assistant-MeshGen-PreviewImage", ["UseSelection"] = "Assistant-MeshGen-UseSelection", ["MaxTriangles"] = "Assistant-MeshGen-MaxTriangles"}]
       88 SETTABLEKS                       R1 R0 K176 ["MeshGen"]
       90 DUPTABLE                         R1 K178 [{["Expand"] = "Assistant-SegmentMesh-Expand"}]
       91 SETTABLEKS                       R1 R0 K179 ["SegmentMesh"]
       93 DUPTABLE                         R1 K182 [{["Expand"] = "Assistant-TextureGen-Expand", ["PreviewImage"] = "Assistant-TextureGen-PreviewImage"}]
       94 SETTABLEKS                       R1 R0 K183 ["TextureGen"]
       96 DUPTABLE                         R1 K186 [{["CloudIcon"] = "Assistant-GenericTool-CloudIcon"}]
       97 SETTABLEKS                       R1 R0 K187 ["GenericTool"]
       99 DUPTABLE                         R1 K190 [{["Expand"] = "Assistant-PrimitiveGen-Expand", ["PreviewImage"] = "Assistant-PrimitiveGen-PreviewImage"}]
      100 SETTABLEKS                       R1 R0 K191 ["PrimitiveGen"]
      102 DUPTABLE                         R1 K199 [{["Expand"] = "Assistant-RunCode-Expand", ["CloudIcon"] = "Assistant-RunCode-CloudIcon", ["Copy"] = "Assistant-RunCode-Copy", ["Run"] = "Assistant-RunCode-Run", ["Stop"] = "Assistant-RunCode-Stop"}]
      103 SETTABLEKS                       R1 R0 K200 ["RunCode"]
      105 DUPTABLE                         R1 K202 [{["Expand"] = "Assistant-Thinking-Expand"}]
      106 SETTABLEKS                       R1 R0 K203 ["Thinking"]
      108 DUPTABLE                         R1 K212 [{["Warning"] = "Assistant-ToolConfirmation-Warning", ["Accept"] = "Assistant-ToolConfirmation-Accept", ["Reject"] = "Assistant-ToolConfirmation-Reject", ["AlwaysAccept"] = "Assistant-ToolConfirmation-AlwaysAccept"}]
      109 SETTABLEKS                       R1 R0 K213 ["ToolConfirmation"]
      111 DUPTABLE                         R1 K221 [{["Warning"] = "Assistant-ScriptChangeConfirmation-Warning", ["ReviewEach"] = "Assistant-ScriptChangeConfirmation-ReviewEach", ["AcceptAllPrompt"] = "Assistant-ScriptChangeConfirmation-AcceptAllPrompt", ["AcceptAllSession"] = "Assistant-ScriptChangeConfirmation-AcceptAllSession"}]
      112 SETTABLEKS                       R1 R0 K222 ["ScriptChangeConfirmation"]
      114 DUPTABLE                         R1 K225 [{["Icon"] = "Assistant-Summarized-Icon", ["Expand"] = "Assistant-Summarized-Expand"}]
      115 SETTABLEKS                       R1 R0 K226 ["Summarized"]
      117 DUPTABLE                         R1 K229 [{["Title"] = "Assistant-ReadFile-Title"}]
      118 SETTABLEKS                       R1 R0 K230 ["ReadFile"]
      120 DUPTABLE                         R1 K238 [{["Expand"] = "Assistant-InputRequested-Expand", ["ReviveButton"] = "Assistant-InputRequested-ReviveButton", ["CloseButton"] = "Assistant-InputRequested-CloseButton", ["SelectedImage"] = "Assistant-InputRequested-SelectedImage"}]
      121 SETTABLEKS                       R1 R0 K239 ["InputRequested"]
      123 DUPTABLE                         R1 K248 [{["StepperPrev"] = "Assistant-QuestionAnswer-StepperPrev", ["StepperNext"] = "Assistant-QuestionAnswer-StepperNext", ["ConfirmCheckbox"] = "Assistant-QuestionAnswer-ConfirmCheckbox", ["ConfirmButton"] = "Assistant-QuestionAnswer-ConfirmButton", ["Dismiss"] = "Assistant-QuestionAnswer-Dismiss"}]
      124 SETTABLEKS                       R1 R0 K249 ["QuestionAnswer"]
      126 DUPTABLE                         R1 K256 [{["AddIntegrationDialog"] = "Assistant-IntegrationMenu-AddIntegrationDialog", ["TabContent"] = "Assistant-IntegrationMenu-TabContent", ["EmptyState"] = "Assistant-IntegrationMenu-EmptyState"}]
      127 SETTABLEKS                       R1 R0 K257 ["IntegrationMenu"]
      129 DUPTABLE                         R1 K275 [{["TabContent"] = "Assistant-Skills-TabContent", ["CreateNewButton"] = "Assistant-Skills-CreateNewButton", ["CreateFromTextButton"] = "Assistant-Skills-CreateFromTextButton", ["RefreshButton"] = "Assistant-Skills-RefreshButton", ["UploadButton"] = "Assistant-Skills-UploadButton", ["PersonalGroup"] = "Assistant-Skills-PersonalGroup", ["RobloxGroup"] = "Assistant-Skills-RobloxGroup", ["Row"], ["Toggle"], ["CreateModal"], ["DetailPane"]}]
      130 DUPCLOSURE                       R2 K276 [PROTO_0]
      131 SETTABLEKS                       R2 R1 K271 ["Row"]
      133 DUPCLOSURE                       R2 K277 [PROTO_1]
      134 SETTABLEKS                       R2 R1 K272 ["Toggle"]
      136 DUPTABLE                         R2 K286 [{["Container"] = "Assistant-Skills-CreateModal-Container", ["NameInput"] = "Assistant-Skills-CreateModal-NameInput", ["DescriptionInput"] = "Assistant-Skills-CreateModal-DescriptionInput", ["CreateButton"] = "Assistant-Skills-CreateModal-CreateButton", ["CancelButton"] = "Assistant-Skills-CreateModal-CancelButton"}]
      137 SETTABLEKS                       R2 R1 K273 ["CreateModal"]
      139 DUPTABLE                         R2 K298 [{["Container"] = "Assistant-Skills-DetailPane-Container", ["Empty"] = "Assistant-Skills-DetailPane-Empty", ["SourceUri"] = "Assistant-Skills-DetailPane-SourceUri", ["OpenButton"] = "Assistant-Skills-DetailPane-OpenButton", ["DuplicateButton"] = "Assistant-Skills-DetailPane-DuplicateButton", ["DeleteButton"] = "Assistant-Skills-DetailPane-DeleteButton"}]
      140 SETTABLEKS                       R2 R1 K274 ["DetailPane"]
      142 SETTABLEKS                       R1 R0 K299 ["Skills"]
      144 DUPTABLE                         R1 K307 [{["Dialog"] = "Assistant-IntegrationItem-Dialog", ["Header"] = "Assistant-IntegrationItem-Header", ["ToolsContainer"] = "Assistant-IntegrationItem-ToolsContainer", ["ToolPill"], ["Actions"]}]
      145 DUPCLOSURE                       R2 K308 [PROTO_2]
      146 SETTABLEKS                       R2 R1 K305 ["ToolPill"]
      148 DUPTABLE                         R2 K314 [{["Toggle"] = "Assistant-IntegrationItem-Actions-Toggle", ["OverflowButton"] = "Assistant-IntegrationItem-Actions-OverflowButton", ["OverflowContent"] = "Assistant-IntegrationItem-Actions-OverflowContent"}]
      149 SETTABLEKS                       R2 R1 K306 ["Actions"]
      151 SETTABLEKS                       R1 R0 K315 ["IntegrationItem"]
      153 DUPTABLE                         R1 K325 [{["Toggle"] = "Assistant-McpSetup-Toggle", ["StartupCommandLabel"] = "Assistant-McpSetup-StartupCommandLabel", ["JsonConfigLabel"] = "Assistant-McpSetup-JsonConfigLabel", ["StartupCommandCopy"] = "Assistant-McpSetup-StartupCommandCopy", ["JsonConfigCopy"] = "Assistant-McpSetup-JsonConfigCopy"}]
      154 SETTABLEKS                       R1 R0 K326 ["McpSetup"]
      156 DUPTABLE                         R1 K332 [{["Container"] = "Assistant-ScopePermissions-Container", ["PresetGroup"] = "Assistant-ScopePermissions-PresetGroup", ["PresetItem"], ["ScopeCheckbox"]}]
      157 DUPCLOSURE                       R2 K333 [PROTO_3]
      158 SETTABLEKS                       R2 R1 K330 ["PresetItem"]
      160 DUPCLOSURE                       R2 K334 [PROTO_4]
      161 SETTABLEKS                       R2 R1 K331 ["ScopeCheckbox"]
      163 SETTABLEKS                       R1 R0 K335 ["ScopePermissions"]
      165 DUPTABLE                         R1 K340 [{["Section"] = "Assistant-QuickConnect-Section", ["Toggle"], ["CommandLabel"], ["CommandCopy"]}]
      166 DUPCLOSURE                       R2 K341 [PROTO_5]
      167 SETTABLEKS                       R2 R1 K272 ["Toggle"]
      169 DUPCLOSURE                       R2 K342 [PROTO_6]
      170 SETTABLEKS                       R2 R1 K338 ["CommandLabel"]
      172 DUPCLOSURE                       R2 K343 [PROTO_7]
      173 SETTABLEKS                       R2 R1 K339 ["CommandCopy"]
      175 SETTABLEKS                       R1 R0 K344 ["QuickConnect"]
      177 DUPCLOSURE                       R1 K345 [PROTO_8]
      178 SETTABLEKS                       R1 R0 K346 ["ProviderCheckbox"]
      180 DUPTABLE                         R1 K351 [{"Display", "EditButton", "Input", "SaveButton", "CancelButton"}]
      181 DUPCLOSURE                       R2 K352 [PROTO_9]
      182 SETTABLEKS                       R2 R1 K347 ["Display"]
      184 DUPCLOSURE                       R2 K353 [PROTO_10]
      185 SETTABLEKS                       R2 R1 K348 ["EditButton"]
      187 DUPCLOSURE                       R2 K354 [PROTO_11]
      188 SETTABLEKS                       R2 R1 K349 ["Input"]
      190 DUPCLOSURE                       R2 K355 [PROTO_12]
      191 SETTABLEKS                       R2 R1 K350 ["SaveButton"]
      193 DUPCLOSURE                       R2 K356 [PROTO_13]
      194 SETTABLEKS                       R2 R1 K148 ["CancelButton"]
      196 SETTABLEKS                       R1 R0 K357 ["APIKey"]
      198 DUPTABLE                         R1 K361 [{["Container"] = "Assistant-AttachedImagePreview-Container", ["Remove"] = "Assistant-AttachedImagePreview-Remove"}]
      199 SETTABLEKS                       R1 R0 K362 ["AttachedImagePreview"]
      201 DUPTABLE                         R1 K374 [{["Header"] = "Assistant-DailyUsage-Header", ["LimitDecreaseButton"] = "Assistant-DailyUsage-LimitDecreaseButton", ["LimitIncreaseButton"] = "Assistant-DailyUsage-LimitIncreaseButton", ["UsageBar"] = "Assistant-DailyUsage-UsageBar", ["Loading"] = "Assistant-DailyUsage-Loading", ["BuyRobuxButton"] = "Assistant-DailyUsage-BuyRobuxButton"}]
      202 SETTABLEKS                       R1 R0 K375 ["DailyUsage"]
      204 DUPTABLE                         R1 K381 [{["Container"] = "Assistant-RobuxPackageModal-Container", ["BuyButton"] = "Assistant-RobuxPackageModal-BuyButton", ["Loading"] = "Assistant-RobuxPackageModal-Loading", ["PackageOption"]}]
      205 DUPCLOSURE                       R2 K382 [PROTO_14]
      206 SETTABLEKS                       R2 R1 K380 ["PackageOption"]
      208 SETTABLEKS                       R1 R0 K383 ["RobuxPackageModal"]
      210 DUPTABLE                         R1 K386 [{["InfoTooltip"] = "Assistant-PropRow-InfoTooltip", ["Row"]}]
      211 DUPCLOSURE                       R2 K387 [PROTO_15]
      212 SETTABLEKS                       R2 R1 K271 ["Row"]
      214 SETTABLEKS                       R1 R0 K388 ["PropertyRow"]
      216 DUPTABLE                         R1 K402 [{["SuggestCheckbox"] = "Assistant-SegPropRow-SuggestCheckbox", ["RefreshButton"] = "Assistant-SegPropRow-RefreshButton", ["WarningToggle"] = "Assistant-PropRow-WarningToggle", ["CancelButton"] = "Assistant-PropRow-CancelButton", ["SuggestButton"] = "Assistant-PropRow-SuggestButton", ["UploadButton"] = "Assistant-PropRow-UploadButton", ["DeletePillButton"] = "Assistant-PropRow-DeletePillButton", ["BooleanCheckbox"] = "Assistant-PropRow-BooleanCheckbox"}]
      217 SETTABLEKS                       R1 R0 K403 ["SegmentationPropertyRow"]
      219 GETIMPORT                        R1 K405 [pcall]
      221 GETIMPORT                        R2 K407 [game]
      223 GETTABLEKS                       R2 R2 K408 ["GetService"]
      225 GETIMPORT                        R3 K407 [game]
      227 LOADK                            R4 K409 ["ProcessService"]
      228 CALL                             R1 3 1
      229 JUMPIFNOT                        R1 ; [+8]
      230 NEWTABLE                         R2 0 0
      232 DUPCLOSURE                       R3 K410 [PROTO_16]
      233 CAPTURE                          VAL R3
      234 CAPTURE                          VAL R2
      235 MOVE                             R4 R3
      236 MOVE                             R5 R0
      237 CALL                             R4 1 0
      238 RETURN                           R0 1
