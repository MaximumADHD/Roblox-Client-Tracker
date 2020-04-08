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
    vec4 Exposure_DoFDistance;
    vec4 LightConfig0;
    vec4 LightConfig1;
    vec4 LightConfig2;
    vec4 LightConfig3;
    vec4 ShadowMatrix0;
    vec4 ShadowMatrix1;
    vec4 ShadowMatrix2;
    vec4 RefractionBias_FadeDistance_GlowFactor_SpecMul;
    vec4 OutlineBrightness_ShadowInfo;
    vec4 SkyGradientTop_EnvDiffuse;
    vec4 SkyGradientBottom_EnvSpec;
    vec3 AmbientColorNoIBL;
    vec3 SkyAmbientNoIBL;
    vec4 AmbientCube[12];
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
    float debugFlags;
};

uniform vec4 CB0[47];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;

in vec4 VARYING0;
in vec4 VARYING2;
in vec3 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
out vec4 _entryPointOutput;

void main()
{
    vec3 f0 = (texture(DiffuseMapTexture, VARYING0.xy) * VARYING2).xyz;
    float f1 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f2 = VARYING3.yzx - (VARYING3.yzx * f1);
    vec4 f3 = vec4(clamp(f1, 0.0, 1.0));
    vec4 f4 = mix(texture(LightMapTexture, f2), vec4(0.0), f3);
    vec4 f5 = mix(texture(LightGridSkylightTexture, f2), vec4(1.0), f3);
    vec3 f6 = (f4.xyz * (f4.w * 120.0)).xyz;
    float f7 = f5.x;
    vec4 f8 = texture(ShadowMapTexture, VARYING6.xy);
    float f9 = (1.0 - ((step(f8.x, VARYING6.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING6.z - 0.5)), 0.0, 1.0)) * f8.y)) * f5.y;
    vec3 f10 = normalize(VARYING4.xyz);
    vec3 f11 = (f0 * f0).xyz;
    float f12 = CB0[26].w * clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec3 f13 = normalize(VARYING5.xyz);
    float f14 = max(VARYING5.w, 0.04500000178813934326171875);
    vec3 f15 = reflect(-f10, f13);
    float f16 = f14 * 5.0;
    vec3 f17 = vec4(f15, f16).xyz;
    vec4 f18 = texture(PrecomputedBRDFTexture, vec2(f14, max(9.9999997473787516355514526367188e-05, dot(f13, f10))));
    float f19 = VARYING6.w * f12;
    vec3 f20 = mix(vec3(0.039999999105930328369140625), f11, vec3(f19));
    vec3 f21 = -CB0[11].xyz;
    vec3 f22 = normalize(f21 + f10);
    float f23 = dot(f13, f21);
    float f24 = clamp(f23, 0.0, 1.0);
    float f25 = f14 * f14;
    float f26 = max(0.001000000047497451305389404296875, dot(f13, f22));
    float f27 = dot(f21, f22);
    float f28 = 1.0 - f27;
    float f29 = f28 * f28;
    float f30 = (f29 * f29) * f28;
    vec3 f31 = vec3(f30) + (f20 * (1.0 - f30));
    float f32 = f25 * f25;
    float f33 = (((f26 * f32) - f26) * f26) + 1.0;
    float f34 = 1.0 - f19;
    float f35 = f12 * f34;
    vec3 f36 = vec3(f34);
    float f37 = f18.x;
    float f38 = f18.y;
    vec3 f39 = ((f20 * f37) + vec3(f38)) / vec3(f37 + f38);
    vec3 f40 = f36 - (f39 * f35);
    vec3 f41 = f13 * f13;
    bvec3 f42 = lessThan(f13, vec3(0.0));
    vec3 f43 = vec3(f42.x ? f41.x : vec3(0.0).x, f42.y ? f41.y : vec3(0.0).y, f42.z ? f41.z : vec3(0.0).z);
    vec3 f44 = f41 - f43;
    float f45 = f44.x;
    float f46 = f44.y;
    float f47 = f44.z;
    float f48 = f43.x;
    float f49 = f43.y;
    float f50 = f43.z;
    vec3 f51 = (mix(textureLod(PrefilteredEnvIndoorTexture, f17, f16).xyz * f6, textureLod(PrefilteredEnvTexture, f17, f16).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f15.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f7)) * f39) * f12;
    vec3 f52 = (((((((((f36 - (f31 * f35)) * CB0[10].xyz) * f24) + (CB0[12].xyz * (f34 * clamp(-f23, 0.0, 1.0)))) * f9) + (f40 * (((((((CB0[35].xyz * f45) + (CB0[37].xyz * f46)) + (CB0[39].xyz * f47)) + (CB0[36].xyz * f48)) + (CB0[38].xyz * f49)) + (CB0[40].xyz * f50)) + (((((((CB0[29].xyz * f45) + (CB0[31].xyz * f46)) + (CB0[33].xyz * f47)) + (CB0[30].xyz * f48)) + (CB0[32].xyz * f49)) + (CB0[34].xyz * f50)) * f7)))) + (CB0[27].xyz + (CB0[28].xyz * f7))) * f11) + ((((f31 * (((f32 + (f32 * f32)) / (((f33 * f33) * ((f27 * 3.0) + 0.5)) * ((f26 * 0.75) + 0.25))) * f24)) * CB0[10].xyz) * f9) + f51)) + (f6 * mix(f11, f51 * (1.0 / (max(max(f51.x, f51.y), f51.z) + 0.00999999977648258209228515625)), (vec3(1.0) - f40) * (f12 * (1.0 - f7))));
    vec4 f53 = vec4(f52.x, f52.y, f52.z, vec4(0.0).w);
    f53.w = 1.0;
    vec3 f54 = mix(CB0[14].xyz, (sqrt(clamp(f53.xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))))).xyz, vec3(clamp((CB0[13].x * length(VARYING4.xyz)) + CB0[13].y, 0.0, 1.0)));
    vec4 f55 = vec4(f54.x, f54.y, f54.z, f53.w);
    f55.w = 1.0;
    _entryPointOutput = f55;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
