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
uniform vec4 CB2[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in vec4 VARYING1;
in vec3 VARYING2;
in vec3 VARYING3;
in vec3 VARYING4;
in vec3 VARYING5;
out vec4 _entryPointOutput;

void main()
{
    vec4 _463 = texture(DiffuseMapTexture, VARYING0);
    vec4 _469 = vec4(1.0, 1.0, 1.0, _463.x);
    bvec4 _471 = bvec4(CB2[0].y > 0.5);
    vec4 _476 = VARYING1 * vec4(_471.x ? _469.x : _463.x, _471.y ? _469.y : _463.y, _471.z ? _469.z : _463.z, _471.w ? _469.w : _463.w);
    vec3 _478 = _476.xyz;
    vec3 _535 = vec3(CB0[15].x);
    float _637 = clamp(dot(step(CB0[20].xyz, abs(VARYING3 - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _581 = VARYING3.yzx - (VARYING3.yzx * _637);
    vec4 _591 = vec4(clamp(_637, 0.0, 1.0));
    vec4 _592 = mix(texture(LightMapTexture, _581), vec4(0.0), _591);
    vec4 _597 = mix(texture(LightGridSkylightTexture, _581), vec4(1.0), _591);
    vec4 _647 = texture(ShadowMapTexture, VARYING4.xy);
    vec3 _496 = mix(_478, _478 * _478, _535).xyz;
    vec3 _508 = mix(_496, (min(((_592.xyz * (_592.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _597.x), vec3(CB0[17].w)) + (VARYING2 * ((1.0 - ((step(_647.x, VARYING4.z) * clamp(CB0[25].z + (CB0[25].w * abs(VARYING4.z - 0.5)), 0.0, 1.0)) * _647.y)) * _597.y))) * _496, vec3(CB2[0].z)).xyz;
    vec3 _713 = mix(CB0[14].xyz, mix(_508, sqrt(clamp(_508 * CB0[15].z, vec3(0.0), vec3(1.0))), _535).xyz, vec3(clamp((CB0[13].x * length(VARYING5)) + CB0[13].y, 0.0, 1.0)));
    _entryPointOutput = vec4(_713.x, _713.y, _713.z, _476.w);
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s0
