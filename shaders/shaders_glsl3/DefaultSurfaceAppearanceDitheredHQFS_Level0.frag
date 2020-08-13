#version 150

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SAParams.h>
uniform vec4 CB0[52];
uniform vec4 CB3[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform samplerCube PrefilteredEnvTexture;
uniform samplerCube PrefilteredEnvIndoorTexture;
uniform sampler2D PrecomputedBRDFTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D SpecularMapTexture;

in vec2 VARYING0;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
in vec4 VARYING5;
in vec4 VARYING6;
in vec4 VARYING7;
out vec4 _entryPointOutput;

void main()
{
    float f0 = clamp(1.0 - (VARYING4.w * CB0[23].y), 0.0, 1.0);
    vec4 f1 = texture(DiffuseMapTexture, VARYING0);
    float f2 = f1.w;
    float f3 = fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))));
    if (smoothstep(0.0, 1.0, f2) < (f3 + ((fract(CB0[46].z) - f3) * clamp((0.001000000047497451305389404296875 * floor(CB0[46].z)) * VARYING4.w, 0.0, 1.0))))
    {
        discard;
    }
    vec4 f4 = vec4(mix(VARYING2.xyz, f1.xyz, vec3(f2)), VARYING2.w);
    vec4 f5 = vec4(f1.xyz, VARYING2.w * f2);
    bvec4 f6 = bvec4(CB3[0].x != 0.0);
    vec4 f7 = vec4(f6.x ? f4.x : f5.x, f6.y ? f4.y : f5.y, f6.z ? f4.z : f5.z, f6.w ? f4.w : f5.w);
    vec2 f8 = texture(NormalMapTexture, VARYING0).wy * 2.0;
    vec2 f9 = f8 - vec2(1.0);
    float f10 = sqrt(clamp(1.0 + dot(vec2(1.0) - f8, f9), 0.0, 1.0));
    vec2 f11 = vec3(f9, f10).xy * f0;
    vec4 f12 = texture(SpecularMapTexture, VARYING0);
    vec3 f13 = normalize(((VARYING6.xyz * f11.x) + ((cross(VARYING5.xyz, VARYING6.xyz) * VARYING6.w) * f11.y)) + (VARYING5.xyz * f10));
    vec3 f14 = f7.xyz;
    vec3 f15 = VARYING7.xyz - (CB0[11].xyz * VARYING3.w);
    float f16 = clamp(dot(step(CB0[19].xyz, abs(VARYING3.xyz - CB0[18].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f17 = VARYING3.yzx - (VARYING3.yzx * f16);
    vec4 f18 = vec4(clamp(f16, 0.0, 1.0));
    vec4 f19 = mix(texture(LightMapTexture, f17), vec4(0.0), f18);
    vec4 f20 = mix(texture(LightGridSkylightTexture, f17), vec4(1.0), f18);
    vec3 f21 = (f19.xyz * (f19.w * 120.0)).xyz;
    float f22 = f20.x;
    vec4 f23 = texture(ShadowMapTexture, f15.xy);
    float f24 = f15.z;
    float f25 = length(VARYING4.xyz);
    vec3 f26 = VARYING4.xyz / vec3(f25);
    vec3 f27 = (f14 * f14).xyz;
    float f28 = CB0[26].w * f0;
    float f29 = max(f12.y, 0.04500000178813934326171875);
    vec3 f30 = reflect(-f26, f13);
    float f31 = f29 * 5.0;
    vec3 f32 = vec4(f30, f31).xyz;
    vec4 f33 = texture(PrecomputedBRDFTexture, vec2(f29, max(9.9999997473787516355514526367188e-05, dot(f13, f26))));
    float f34 = f12.x * f28;
    vec3 f35 = mix(vec3(0.039999999105930328369140625), f27, vec3(f34));
    vec3 f36 = -CB0[11].xyz;
    float f37 = dot(f13, f36) * ((1.0 - ((step(f23.x, f24) * clamp(CB0[24].z + (CB0[24].w * abs(f24 - 0.5)), 0.0, 1.0)) * f23.y)) * f20.y);
    vec3 f38 = normalize(f36 + f26);
    float f39 = clamp(f37, 0.0, 1.0);
    float f40 = f29 * f29;
    float f41 = max(0.001000000047497451305389404296875, dot(f13, f38));
    float f42 = dot(f36, f38);
    float f43 = 1.0 - f42;
    float f44 = f43 * f43;
    float f45 = (f44 * f44) * f43;
    vec3 f46 = vec3(f45) + (f35 * (1.0 - f45));
    float f47 = f40 * f40;
    float f48 = (((f41 * f47) - f41) * f41) + 1.0;
    float f49 = 1.0 - f34;
    float f50 = f28 * f49;
    vec3 f51 = vec3(f49);
    float f52 = f33.x;
    float f53 = f33.y;
    vec3 f54 = ((f35 * f52) + vec3(f53)) / vec3(f52 + f53);
    vec3 f55 = f51 - (f54 * f50);
    vec3 f56 = f13 * f13;
    bvec3 f57 = lessThan(f13, vec3(0.0));
    vec3 f58 = vec3(f57.x ? f56.x : vec3(0.0).x, f57.y ? f56.y : vec3(0.0).y, f57.z ? f56.z : vec3(0.0).z);
    vec3 f59 = f56 - f58;
    float f60 = f59.x;
    float f61 = f59.y;
    float f62 = f59.z;
    float f63 = f58.x;
    float f64 = f58.y;
    float f65 = f58.z;
    vec3 f66 = (mix(textureLod(PrefilteredEnvIndoorTexture, f32, f31).xyz * f21, textureLod(PrefilteredEnvTexture, f32, f31).xyz * mix(CB0[26].xyz, CB0[25].xyz, vec3(clamp(f30.y * 1.58823525905609130859375, 0.0, 1.0))), vec3(f22)) * f54) * f28;
    vec3 f67 = ((((((((f51 - (f46 * f50)) * CB0[10].xyz) * f39) + (CB0[12].xyz * (f49 * clamp(-f37, 0.0, 1.0)))) + (f55 * (((((((CB0[35].xyz * f60) + (CB0[37].xyz * f61)) + (CB0[39].xyz * f62)) + (CB0[36].xyz * f63)) + (CB0[38].xyz * f64)) + (CB0[40].xyz * f65)) + (((((((CB0[29].xyz * f60) + (CB0[31].xyz * f61)) + (CB0[33].xyz * f62)) + (CB0[30].xyz * f63)) + (CB0[32].xyz * f64)) + (CB0[34].xyz * f65)) * f22)))) + (CB0[27].xyz + (CB0[28].xyz * f22))) * f27) + (((f46 * (((f47 + (f47 * f47)) / (((f48 * f48) * ((f42 * 3.0) + 0.5)) * ((f41 * 0.75) + 0.25))) * f39)) * CB0[10].xyz) + f66)) + (f21 * mix(f27, f66 * (1.0 / (max(max(f66.x, f66.y), f66.z) + 0.00999999977648258209228515625)), (vec3(1.0) - f55) * (f28 * (1.0 - f22))));
    float f68 = f7.w;
    vec4 f69 = vec4(f67.x, f67.y, f67.z, vec4(0.0).w);
    f69.w = f68;
    float f70 = clamp(exp2((CB0[13].z * f25) + CB0[13].x) - CB0[13].w, 0.0, 1.0);
    vec3 f71 = textureLod(PrefilteredEnvTexture, vec4(-VARYING4.xyz, 0.0).xyz, max(CB0[13].y, f70) * 5.0).xyz;
    bvec3 f72 = bvec3(CB0[13].w != 0.0);
    vec3 f73 = sqrt(clamp(mix(vec3(f72.x ? CB0[14].xyz.x : f71.x, f72.y ? CB0[14].xyz.y : f71.y, f72.z ? CB0[14].xyz.z : f71.z), f69.xyz, vec3(f70)).xyz * CB0[15].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * f3));
    vec4 f74 = vec4(f73.x, f73.y, f73.z, f69.w);
    f74.w = f68;
    _entryPointOutput = f74;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$PrefilteredEnvTexture=s15
//$$PrefilteredEnvIndoorTexture=s14
//$$PrecomputedBRDFTexture=s11
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s5
