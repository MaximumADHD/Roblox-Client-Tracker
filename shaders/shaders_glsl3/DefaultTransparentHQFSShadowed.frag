#version 150

struct Globals
{
    mat4 ViewProjection;
    vec4 ViewRight;
    vec4 ViewUp;
    vec4 ViewDir;
    vec3 CameraPosition;
    vec3 AmbientColor;
    vec3 SkyAmbient;
    vec3 Lamp0Color;
    vec3 Lamp0Dir;
    vec3 Lamp1Color;
    vec4 FogParams;
    vec4 FogColor_GlobalForceFieldTime;
    vec4 Technology_Exposure;
    vec4 LightBorder;
    vec4 LightConfig0;
    vec4 LightConfig1;
    vec4 LightConfig2;
    vec4 LightConfig3;
    vec4 ShadowMatrix0;
    vec4 ShadowMatrix1;
    vec4 ShadowMatrix2;
    vec4 RefractionBias_FadeDistance_GlowFactor_SpecMul;
    vec4 OutlineBrightness_ShadowInfo;
    vec4 CascadeSphere0;
    vec4 CascadeSphere1;
    vec4 CascadeSphere2;
    vec4 CascadeSphere3;
    float hybridLerpDist;
    float hybridLerpSlope;
    float evsmPosExp;
    float evsmNegExp;
    float globalShadow;
    float shadowBias;
    float shadowAlphaRef;
    float debugFlagsShadows;
};

uniform vec4 CB0[32];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;

in vec4 VARYING0;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    vec4 _603 = texture(DiffuseMapTexture, VARYING0.xy) * VARYING2;
    vec3 _616 = _603.xyz;
    vec3 _712 = vec3(CB0[15].x);
    float _814 = clamp(dot(step(CB0[20].xyz, abs(VARYING3.xyz - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _758 = VARYING3.yzx - (VARYING3.yzx * _814);
    vec4 _768 = vec4(clamp(_814, 0.0, 1.0));
    vec4 _769 = mix(texture(LightMapTexture, _758), vec4(0.0), _768);
    vec4 _774 = mix(texture(LightGridSkylightTexture, _758), vec4(1.0), _768);
    vec4 _824 = texture(ShadowMapTexture, VARYING7.xy);
    float _837 = (1.0 - ((step(_824.x, VARYING7.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING7.z - 0.5)), 0.0, 1.0)) * _824.y)) * _774.y;
    vec3 _665 = ((min(((_769.xyz * (_769.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _774.x), vec3(CB0[17].w)) + (VARYING6.xyz * _837)) * mix(_616, _616 * _616, _712).xyz) + (CB0[10].xyz * ((VARYING6.w * _837) * pow(clamp(dot(normalize(VARYING5.xyz), normalize((-CB0[11].xyz) + normalize(VARYING4.xyz))), 0.0, 1.0), VARYING5.w)));
    vec4 _1002 = vec4(_665.x, _665.y, _665.z, vec4(0.0).w);
    _1002.w = _603.w;
    vec3 _919 = mix(CB0[14].xyz, mix(_1002.xyz, sqrt(clamp(_1002.xyz * CB0[15].z, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125)))))), _712).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(_919.x, _919.y, _919.z, _1002.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
