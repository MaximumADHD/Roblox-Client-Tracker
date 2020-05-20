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

in vec2 VARYING0;
in vec4 VARYING2;
in vec3 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(DiffuseMapTexture, VARYING0) * VARYING2;
    vec3 f1 = f0.xyz;
    float f2 = clamp(dot(step(CB0[19].xyz, abs(VARYING3 - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f3 = VARYING3.yzx - (VARYING3.yzx * f2);
    vec4 f4 = vec4(clamp(f2, 0.0, 1.0));
    vec4 f5 = mix(texture(LightMapTexture, f3), vec4(0.0), f4);
    vec4 f6 = mix(texture(LightGridSkylightTexture, f3), vec4(1.0), f4);
    vec3 f7 = (f5.xyz * (f5.w * 120.0)).xyz;
    float f8 = f6.x;
    vec4 f9 = texture(ShadowMapTexture, VARYING6.xy);
    float f10 = (1.0 - ((step(f9.x, VARYING6.z) * clamp(CB0[24].z + (CB0[24].w * abs(VARYING6.z - 0.5)), 0.0, 1.0)) * f9.y)) * f6.y;
    float f11 = length(VARYING4.xyz);
    vec3 f12 = VARYING4.xyz / vec3(f11);
    vec3 f13 = (f1 * f1).xyz;
    float f14 = CB0[26].w * clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec3 f15 = normalize(VARYING5.xyz);
    float f16 = max(VARYING5.w, 0.04500000178813934326171875);
    vec3 f17 = reflect(-f12, f15);
    float f18 = f16 * 5.0;
    vec3 f19 = vec4(f17, f18).xyz;
    vec4 f20 = texture(PrecomputedBRDFTexture, vec2(f16, max(9.9999997473787516355514526367188e-05, dot(f15, f12))));
    float f21 = VARYING6.w * f14;
    vec3 f22 = mix(vec3(0.039999999105930328369140625), f13, vec3(f21));
    vec3 f23 = -CB0[11].xyz;
    vec3 f24 = normalize(f23 + f12);
    float f25 = dot(f15, f23);
    float f26 = clamp(f25, 0.0, 1.0);
    float f27 = f16 * f16;
    float f28 = max(0.001000000047497451305389404296875, dot(f15, f24));
    float f29 = dot(f23, f24);
    float f30 = 1.0 - f29;
    float f31 = f30 * f30;
    float f32 = (f31 * f31) * f30;
    vec3 f33 = vec3(f32) + (f22 * (1.0 - f32));
    float f34 = f27 * f27;
    float f35 = (((f28 * f34) - f28) * f28) + 1.0;
    float f36 = 1.0 - f21;
    float f37 = f14 * f36;
    vec3 f38 = vec3(f36);
    float f39 = f20.x;
    float f40 = f20.y;
    vec3 f41 = ((f22 * f39) + vec3(f40)) / vec3(f39 + f40);
    vec3 f42 = f38 - (f41 * f37);
    vec3 f43 = f15 * f15;
    bvec3 f44 = lessThan(f15, vec3(0.0));
    vec3 f45 = vec3(f44.x ? f43.x : vec3(0.0).x, f44.y ? f43.y : vec3(0.0).y, f44.z ? f43.z : vec3(0.0).z);
    vec3 f46 = f43 - f45;
    float f47 = f46.x;
    float f48 = f46.y;
    float f49 = f46.z;
    float f50 = f45.x;
    float f51 = f45.y;
    float f52 = f45.z;
    vec3 f53 = (mix(textureLod(PrefilteredEnvIndoorTexture, f19, f18).xyz * f7, textureLod(PrefilteredEnvTexture, f19, f18).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f17.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f8)) * f41) * f14;
    vec3 f54 = (((((((((f38 - (f33 * f37)) * CB0[10].xyz) * f26) + (CB0[12].xyz * (f36 * clamp(-f25, 0.0, 1.0)))) * f10) + (f42 * (((((((CB0[35].xyz * f47) + (CB0[37].xyz * f48)) + (CB0[39].xyz * f49)) + (CB0[36].xyz * f50)) + (CB0[38].xyz * f51)) + (CB0[40].xyz * f52)) + (((((((CB0[29].xyz * f47) + (CB0[31].xyz * f48)) + (CB0[33].xyz * f49)) + (CB0[30].xyz * f50)) + (CB0[32].xyz * f51)) + (CB0[34].xyz * f52)) * f8)))) + (CB0[27].xyz + (CB0[28].xyz * f8))) * f13) + ((((f33 * (((f34 + (f34 * f34)) / (((f35 * f35) * ((f29 * 3.0) + 0.5)) * ((f28 * 0.75) + 0.25))) * f26)) * CB0[10].xyz) * f10) + f53)) + (f7 * mix(f13, f53 * (1.0 / (max(max(f53.x, f53.y), f53.z) + 0.00999999977648258209228515625)), (vec3(1.0) - f42) * (f14 * (1.0 - f8))));
    float f55 = f0.w;
    vec4 f56 = vec4(f54.x, f54.y, f54.z, vec4(0.0).w);
    f56.w = f55;
    float f57 = clamp(exp2((CB0[13].z * f11) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f58 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f57) * 5.0).xyz;
    bvec3 f59 = bvec3(CB0[13].w != 0.0);
    vec3 f60 = sqrt(clamp(mix(vec3(f59.x ? CB0[14].xyz.x : f58.x, f59.y ? CB0[14].xyz.y : f58.y, f59.z ? CB0[14].xyz.z : f58.z), f56.xyz, vec3(f57)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f61 = vec4(f60.x, f60.y, f60.z, f56.w);
    f61.w = f55;
    _entryPointOutput = f61;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
