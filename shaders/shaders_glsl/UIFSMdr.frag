#version 110

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
uniform sampler2D DiffuseMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING1;

void main()
{
    vec4 _158 = texture2D(DiffuseMapTexture, VARYING0);
    vec4 _164 = vec4(1.0, 1.0, 1.0, _158.x);
    bvec4 _166 = bvec4(CB2[0].y > 0.5);
    vec4 _171 = VARYING1 * vec4(_166.x ? _164.x : _158.x, _166.y ? _164.y : _158.y, _166.z ? _164.z : _158.z, _166.w ? _164.w : _158.w);
    vec3 _173 = _171.xyz;
    vec3 _193 = mix(_173, sqrt(clamp((_173 * _173) * CB0[15].z, vec3(0.0), vec3(1.0))), vec3(CB0[15].x));
    gl_FragData[0] = vec4(_193.x, _193.y, _193.z, _171.w);
}

//$$DiffuseMapTexture=s0
