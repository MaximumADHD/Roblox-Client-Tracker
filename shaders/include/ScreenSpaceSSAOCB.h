struct ScreenSpaceSSAOCB
{
    vec4 TextureSize;
    vec4 ViewportScale;
    vec4 SSAOParams;
    vec4 SSAOFilterParams;
    vec4 Params3_UNUSED;
    vec4 Params4_UNUSED;
    vec4 Params5_UNUSED;
    vec4 Params6_UNUSED;
    float DepthLinearizeScale;
    float DepthLinearizeBias;
    vec2 Params7_pad_UNUSED;
    vec2 ViewReconstructX;
    vec2 ViewReconstructY;
    vec4 screenCaptureRotation_UNUSED;
    vec4 Bloom_UNUSED;
    vec2 Texture0UVClamp;
    vec2 Texture1UVClamp_UNUSED;
    vec2 Texture2UVClamp;
    vec2 Texture3UVClamp;
    vec2 Texture4UVClamp_UNUSED;
    vec2 Texture5UVClamp_UNUSED;
    vec2 Texture6UVClamp_UNUSED;
    vec2 padding_UNUSED;
    vec4 WatermarkParams_UNUSED;
    vec4 WatermarkParams2_UNUSED;
};