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
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;

varying vec3 VARYING0;

void main()
{
    float _331 = clamp(dot(step(CB0[20].xyz, abs(VARYING0 - CB0[19].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 _275 = VARYING0.yzx - (VARYING0.yzx * _331);
    vec4 _285 = vec4(clamp(_331, 0.0, 1.0));
    vec4 _286 = mix(texture3D(LightMapTexture, _275), vec4(0.0), _285);
    vec4 _291 = mix(texture3D(LightGridSkylightTexture, _275), vec4(1.0), _285);
    vec3 _335 = (min(((_286.xyz * (_286.w * 120.0)).xyz + CB0[8].xyz) + (CB0[9].xyz * _291.x), vec3(CB0[17].w)) + (CB0[10].xyz * _291.y)) * 0.008333333767950534820556640625;
    float _351 = ceil(clamp(max(max(_335.x, _335.y), max(_335.z, 0.0500000007450580596923828125)), 0.0, 1.0) * 255.0) * 0.0039215688593685626983642578125;
    vec4 _396 = vec4(0.0);
    _396.w = _351;
    vec3 _357 = _335 / vec3(_351);
    gl_FragData[0] = vec4(_357.x, _357.y, _357.z, _396.w);
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
