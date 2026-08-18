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
        9 DUPTABLE                         R1 K26 [{["OptionsButton"] = "Assistant-ThreadEntry-OptionsButton", ["RenameInput"] = "Assistant-ThreadEntry-RenameInput"}]
       10 SETTABLEKS                       R1 R0 K27 ["ThreadEntry"]
       12 DUPTABLE                         R1 K29 [{["Container"] = "Assistant-ThreadOptionsMenu-Container"}]
       13 SETTABLEKS                       R1 R0 K30 ["ThreadOptionsMenu"]
       15 DUPTABLE                         R1 K43 [{["Container"] = "Assistant-InputArea-Container", ["StopButton"] = "Assistant-InputArea-StopButton", ["AttachImageButton"] = "Assistant-InputArea-AttachImageButton", ["AttachedImagesPreview"] = "Assistant-InputArea-AttachedImagesPreview", ["AssistantModeDropdown"] = "Assistant-InputArea-AssistantModeDropdown", ["AssistantModeDropdownMenu"] = "Assistant-InputArea-AssistantModeDropdownMenu", ["Footer"]}]
       16 DUPTABLE                         R2 K47 [{["Container"] = "Assistant-InputArea-Footer-Container", ["Icon"] = "Assistant-InputArea-Footer-Icon"}]
       17 SETTABLEKS                       R2 R1 K42 ["Footer"]
       19 SETTABLEKS                       R1 R0 K48 ["InputArea"]
       21 DUPTABLE                         R1 K56 [{["Container"] = "Assistant-MessageActions-Container", ["ThumbsUp"] = "Assistant-MessageActions-ThumbsUp", ["ThumbsDown"] = "Assistant-MessageActions-ThumbsDown", ["Retry"] = "Assistant-MessageActions-Retry"}]
       22 SETTABLEKS                       R1 R0 K57 ["MessageActions"]
       24 DUPTABLE                         R1 K67 [{["Container"] = "Assistant-FeedbackView-Container", ["Dropdown"] = "Assistant-FeedbackView-Dropdown", ["TextArea"] = "Assistant-FeedbackView-TextArea", ["Close"] = "Assistant-FeedbackView-Close", ["Submit"] = "Assistant-FeedbackView-Submit"}]
       25 SETTABLEKS                       R1 R0 K68 ["FeedbackView"]
       27 LOADK                            R1 K69 ["Assistant-GenerationIndicator"]
       28 SETTABLEKS                       R1 R0 K70 ["GenerationIndicator"]
       30 LOADK                            R1 K71 ["Assistant-ModelQualityWarning"]
       31 SETTABLEKS                       R1 R0 K72 ["ModelQualityWarning"]
       33 DUPTABLE                         R1 K75 [{["Button"] = "Assistant-ServerManagement-Button"}]
       34 SETTABLEKS                       R1 R0 K76 ["ServerManagement"]
       36 DUPTABLE                         R1 K81 [{["Checkbox"] = "Assistant-McpServer-Checkbox", ["CheckboxInput"] = "Assistant-McpServer-Checkbox--container"}]
       37 SETTABLEKS                       R1 R0 K82 ["McpServer"]
       39 DUPTABLE                         R1 K85 [{["Container"] = "Assistant-SlashCommandMenu-Container", ["Item"]}]
       40 DUPTABLE                         R2 K89 [{["Container"] = "Assistant-SlashCommandMenu-Item-Container", ["Command"] = "Assistant-SlashCommandMenu-Item-Command"}]
       41 SETTABLEKS                       R2 R1 K84 ["Item"]
       43 SETTABLEKS                       R1 R0 K90 ["SlashCommandMenu"]
       45 DUPTABLE                         R1 K93 [{["Container"] = "Assistant-ToolMenuView-Container", ["Option"]}]
       46 DUPTABLE                         R2 K96 [{["Container"] = "Assistant-ToolMenuView-Option-Container", ["Checkbox"] = "Assistant-ToolMenuView-Option-Checkbox"}]
       47 SETTABLEKS                       R2 R1 K92 ["Option"]
       49 SETTABLEKS                       R1 R0 K97 ["ToolMenuView"]
       51 DUPTABLE                         R1 K100 [{["Container"] = "Assistant-ModelPicker-Container", ["Dropdown"] = "Assistant-ModelPicker-Dropdown"}]
       52 SETTABLEKS                       R1 R0 K101 ["ModelPicker"]
       54 DUPTABLE                         R1 K105 [{["Root"] = "Assistant-Carousel-Root", ["Container"] = "Assistant-Carousel-Container"}]
       55 SETTABLEKS                       R1 R0 K106 ["Carousel"]
       57 DUPTABLE                         R1 K110 [{["Root"] = "Assistant-CarouselItem-Root", ["Selected"] = "Assistant-CarouselItem-Selected"}]
       58 SETTABLEKS                       R1 R0 K111 ["CarouselItem"]
       60 DUPTABLE                         R1 K117 [{["Continue"] = "Assistant-Alert-Continue", ["EditApiKeys"] = "Assistant-Alert-EditApiKeys", ["Close"] = "Assistant-Alert-Close"}]
       61 SETTABLEKS                       R1 R0 K118 ["Alert"]
       63 DUPTABLE                         R1 K123 [{["Image"] = "Assistant-ImageContent-Image", ["Expand"] = "Assistant-ImageContent-Expand"}]
       64 SETTABLEKS                       R1 R0 K124 ["ImageContent"]
       66 DUPTABLE                         R1 K126 [{["Expand"] = "Assistant-AssetInsert-Expand"}]
       67 SETTABLEKS                       R1 R0 K127 ["AssetInsert"]
       69 DUPTABLE                         R1 K131 [{["Expand"] = "Assistant-AssetSearch-Expand", ["Tile"] = "Assistant-AssetSearch-Tile"}]
       70 SETTABLEKS                       R1 R0 K132 ["AssetSearch"]
       72 DUPTABLE                         R1 K134 [{["Expand"] = "Assistant-AssetVariation-Expand"}]
       73 SETTABLEKS                       R1 R0 K135 ["AssetVariation"]
       75 DUPTABLE                         R1 K141 [{["Expand"] = "Assistant-MaterialGen-Expand", ["StudsPerTileValueBar"] = "Assistant-MaterialGen-StudsPerTileValueBar", ["OrganicPatternToggle"] = "Assistant-MaterialGen-OrganicPatternToggle"}]
       76 SETTABLEKS                       R1 R0 K142 ["MaterialGen"]
       78 DUPTABLE                         R1 K150 [{["Expand"] = "Assistant-MeshGen-Expand", ["PreviewImage"] = "Assistant-MeshGen-PreviewImage", ["UseSelection"] = "Assistant-MeshGen-UseSelection", ["MaxTriangles"] = "Assistant-MeshGen-MaxTriangles"}]
       79 SETTABLEKS                       R1 R0 K151 ["MeshGen"]
       81 DUPTABLE                         R1 K154 [{["CloudIcon"] = "Assistant-GenericTool-CloudIcon"}]
       82 SETTABLEKS                       R1 R0 K155 ["GenericTool"]
       84 DUPTABLE                         R1 K158 [{["Expand"] = "Assistant-PrimitiveGen-Expand", ["PreviewImage"] = "Assistant-PrimitiveGen-PreviewImage"}]
       85 SETTABLEKS                       R1 R0 K159 ["PrimitiveGen"]
       87 DUPTABLE                         R1 K168 [{["Expand"] = "Assistant-RunCode-Expand", ["CloudIcon"] = "Assistant-RunCode-CloudIcon", ["Copy"] = "Assistant-RunCode-Copy", ["Run"] = "Assistant-RunCode-Run", ["Stop"] = "Assistant-RunCode-Stop"}]
       88 SETTABLEKS                       R1 R0 K169 ["RunCode"]
       90 DUPTABLE                         R1 K171 [{["Expand"] = "Assistant-Thinking-Expand"}]
       91 SETTABLEKS                       R1 R0 K172 ["Thinking"]
       93 DUPTABLE                         R1 K181 [{["Warning"] = "Assistant-ToolConfirmation-Warning", ["Accept"] = "Assistant-ToolConfirmation-Accept", ["Reject"] = "Assistant-ToolConfirmation-Reject", ["AlwaysAccept"] = "Assistant-ToolConfirmation-AlwaysAccept"}]
       94 SETTABLEKS                       R1 R0 K182 ["ToolConfirmation"]
       96 DUPTABLE                         R1 K190 [{["Warning"] = "Assistant-ScriptChangeConfirmation-Warning", ["ReviewEach"] = "Assistant-ScriptChangeConfirmation-ReviewEach", ["AcceptAllPrompt"] = "Assistant-ScriptChangeConfirmation-AcceptAllPrompt", ["AcceptAllSession"] = "Assistant-ScriptChangeConfirmation-AcceptAllSession"}]
       97 SETTABLEKS                       R1 R0 K191 ["ScriptChangeConfirmation"]
       99 DUPTABLE                         R1 K194 [{["Icon"] = "Assistant-Summarized-Icon", ["Expand"] = "Assistant-Summarized-Expand"}]
      100 SETTABLEKS                       R1 R0 K195 ["Summarized"]
      102 DUPTABLE                         R1 K198 [{["Title"] = "Assistant-ReadFile-Title"}]
      103 SETTABLEKS                       R1 R0 K199 ["ReadFile"]
      105 DUPTABLE                         R1 K207 [{["Expand"] = "Assistant-InputRequested-Expand", ["ReviveButton"] = "Assistant-InputRequested-ReviveButton", ["CloseButton"] = "Assistant-InputRequested-CloseButton", ["SelectedImage"] = "Assistant-InputRequested-SelectedImage"}]
      106 SETTABLEKS                       R1 R0 K208 ["InputRequested"]
      108 DUPTABLE                         R1 K217 [{["StepperPrev"] = "Assistant-QuestionAnswer-StepperPrev", ["StepperNext"] = "Assistant-QuestionAnswer-StepperNext", ["ConfirmCheckbox"] = "Assistant-QuestionAnswer-ConfirmCheckbox", ["Dismiss"] = "Assistant-QuestionAnswer-Dismiss"}]
      109 SETTABLEKS                       R1 R0 K218 ["QuestionAnswer"]
      111 DUPTABLE                         R1 K225 [{["AddIntegrationDialog"] = "Assistant-IntegrationMenu-AddIntegrationDialog", ["TabContent"] = "Assistant-IntegrationMenu-TabContent", ["EmptyState"] = "Assistant-IntegrationMenu-EmptyState"}]
      112 SETTABLEKS                       R1 R0 K226 ["IntegrationMenu"]
      114 DUPTABLE                         R1 K244 [{["TabContent"] = "Assistant-Skills-TabContent", ["CreateNewButton"] = "Assistant-Skills-CreateNewButton", ["CreateFromTextButton"] = "Assistant-Skills-CreateFromTextButton", ["RefreshButton"] = "Assistant-Skills-RefreshButton", ["UploadButton"] = "Assistant-Skills-UploadButton", ["PersonalGroup"] = "Assistant-Skills-PersonalGroup", ["RobloxGroup"] = "Assistant-Skills-RobloxGroup", ["Row"], ["Toggle"], ["CreateModal"], ["DetailPane"]}]
      115 DUPCLOSURE                       R2 K245 [PROTO_0]
      116 SETTABLEKS                       R2 R1 K240 ["Row"]
      118 DUPCLOSURE                       R2 K246 [PROTO_1]
      119 SETTABLEKS                       R2 R1 K241 ["Toggle"]
      121 DUPTABLE                         R2 K256 [{["Container"] = "Assistant-Skills-CreateModal-Container", ["NameInput"] = "Assistant-Skills-CreateModal-NameInput", ["DescriptionInput"] = "Assistant-Skills-CreateModal-DescriptionInput", ["CreateButton"] = "Assistant-Skills-CreateModal-CreateButton", ["CancelButton"] = "Assistant-Skills-CreateModal-CancelButton"}]
      122 SETTABLEKS                       R2 R1 K242 ["CreateModal"]
      124 DUPTABLE                         R2 K268 [{["Container"] = "Assistant-Skills-DetailPane-Container", ["Empty"] = "Assistant-Skills-DetailPane-Empty", ["SourceUri"] = "Assistant-Skills-DetailPane-SourceUri", ["OpenButton"] = "Assistant-Skills-DetailPane-OpenButton", ["DuplicateButton"] = "Assistant-Skills-DetailPane-DuplicateButton", ["DeleteButton"] = "Assistant-Skills-DetailPane-DeleteButton"}]
      125 SETTABLEKS                       R2 R1 K243 ["DetailPane"]
      127 SETTABLEKS                       R1 R0 K269 ["Skills"]
      129 DUPTABLE                         R1 K277 [{["Dialog"] = "Assistant-IntegrationItem-Dialog", ["Header"] = "Assistant-IntegrationItem-Header", ["ToolsContainer"] = "Assistant-IntegrationItem-ToolsContainer", ["ToolPill"], ["Actions"]}]
      130 DUPCLOSURE                       R2 K278 [PROTO_2]
      131 SETTABLEKS                       R2 R1 K275 ["ToolPill"]
      133 DUPTABLE                         R2 K284 [{["Toggle"] = "Assistant-IntegrationItem-Actions-Toggle", ["OverflowButton"] = "Assistant-IntegrationItem-Actions-OverflowButton", ["OverflowContent"] = "Assistant-IntegrationItem-Actions-OverflowContent"}]
      134 SETTABLEKS                       R2 R1 K276 ["Actions"]
      136 SETTABLEKS                       R1 R0 K285 ["IntegrationItem"]
      138 DUPTABLE                         R1 K295 [{["Toggle"] = "Assistant-McpSetup-Toggle", ["StartupCommandLabel"] = "Assistant-McpSetup-StartupCommandLabel", ["JsonConfigLabel"] = "Assistant-McpSetup-JsonConfigLabel", ["StartupCommandCopy"] = "Assistant-McpSetup-StartupCommandCopy", ["JsonConfigCopy"] = "Assistant-McpSetup-JsonConfigCopy"}]
      139 SETTABLEKS                       R1 R0 K296 ["McpSetup"]
      141 DUPTABLE                         R1 K302 [{["Container"] = "Assistant-ScopePermissions-Container", ["PresetGroup"] = "Assistant-ScopePermissions-PresetGroup", ["PresetItem"], ["ScopeCheckbox"]}]
      142 DUPCLOSURE                       R2 K303 [PROTO_3]
      143 SETTABLEKS                       R2 R1 K300 ["PresetItem"]
      145 DUPCLOSURE                       R2 K304 [PROTO_4]
      146 SETTABLEKS                       R2 R1 K301 ["ScopeCheckbox"]
      148 SETTABLEKS                       R1 R0 K305 ["ScopePermissions"]
      150 DUPTABLE                         R1 K310 [{["Section"] = "Assistant-QuickConnect-Section", ["Toggle"], ["CommandLabel"], ["CommandCopy"]}]
      151 DUPCLOSURE                       R2 K311 [PROTO_5]
      152 SETTABLEKS                       R2 R1 K241 ["Toggle"]
      154 DUPCLOSURE                       R2 K312 [PROTO_6]
      155 SETTABLEKS                       R2 R1 K308 ["CommandLabel"]
      157 DUPCLOSURE                       R2 K313 [PROTO_7]
      158 SETTABLEKS                       R2 R1 K309 ["CommandCopy"]
      160 SETTABLEKS                       R1 R0 K314 ["QuickConnect"]
      162 DUPCLOSURE                       R1 K315 [PROTO_8]
      163 SETTABLEKS                       R1 R0 K316 ["ProviderCheckbox"]
      165 DUPTABLE                         R1 K321 [{"Display", "EditButton", "Input", "SaveButton", "CancelButton"}]
      166 DUPCLOSURE                       R2 K322 [PROTO_9]
      167 SETTABLEKS                       R2 R1 K317 ["Display"]
      169 DUPCLOSURE                       R2 K323 [PROTO_10]
      170 SETTABLEKS                       R2 R1 K318 ["EditButton"]
      172 DUPCLOSURE                       R2 K324 [PROTO_11]
      173 SETTABLEKS                       R2 R1 K319 ["Input"]
      175 DUPCLOSURE                       R2 K325 [PROTO_12]
      176 SETTABLEKS                       R2 R1 K320 ["SaveButton"]
      178 DUPCLOSURE                       R2 K326 [PROTO_13]
      179 SETTABLEKS                       R2 R1 K254 ["CancelButton"]
      181 SETTABLEKS                       R1 R0 K327 ["APIKey"]
      183 DUPTABLE                         R1 K331 [{["Container"] = "Assistant-AttachedImagePreview-Container", ["Remove"] = "Assistant-AttachedImagePreview-Remove"}]
      184 SETTABLEKS                       R1 R0 K332 ["AttachedImagePreview"]
      186 DUPTABLE                         R1 K344 [{["SuggestCheckbox"] = "Assistant-SegPropRow-SuggestCheckbox", ["RefreshButton"] = "Assistant-SegPropRow-RefreshButton", ["WarningToggle"] = "Assistant-PropRow-WarningToggle", ["CancelButton"] = "Assistant-PropRow-CancelButton", ["SuggestButton"] = "Assistant-PropRow-SuggestButton", ["UploadButton"] = "Assistant-PropRow-UploadButton", ["DeletePillButton"] = "Assistant-PropRow-DeletePillButton"}]
      187 SETTABLEKS                       R1 R0 K345 ["SegmentationPropertyRow"]
      189 GETIMPORT                        R1 K347 [pcall]
      191 GETIMPORT                        R2 K349 [game]
      193 GETTABLEKS                       R2 R2 K350 ["GetService"]
      195 GETIMPORT                        R3 K349 [game]
      197 LOADK                            R4 K351 ["ProcessService"]
      198 CALL                             R1 3 1
      199 JUMPIFNOT                        R1 ; [+8]
      200 NEWTABLE                         R2 0 0
      202 DUPCLOSURE                       R3 K352 [PROTO_14]
      203 CAPTURE                          VAL R3
      204 CAPTURE                          VAL R2
      205 MOVE                             R4 R3
      206 MOVE                             R5 R0
      207 CALL                             R4 1 0
      208 RETURN                           R0 1
