#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SAParams.h>
uniform vec4 CB0[58];
uniform vec4 CB3[1];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D SpecularMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;
varying vec3 VARYING8;

void main()
{
    vec4 f0 = texture2D(DiffuseMapTexture, VARYING0);
    vec3 f1 = f0.xyz;
    vec3 f2 = mix(f1, f1 * VARYING8, vec3(CB3[0].y));
    float f3 = f2.x;
    vec4 f4 = f0;
    f4.x = f3;
    vec4 f5 = f4;
    f5.y = f2.y;
    vec4 f6 = f5;
    f6.z = f2.z;
    float f7 = f0.w;
    vec4 f8 = mix(vec4(f3, f2.yz, VARYING2.w * f7), vec4(mix(VARYING2.xyz, f6.xyz, vec3(f7)), VARYING2.w), vec4(CB3[0].x));
    vec2 f9 = texture2D(NormalMapTexture, VARYING0).wy * 2.0;
    vec2 f10 = f9 - vec2(1.0);
    vec3 f11 = mix(vec3(0.0, 0.0, 1.0), vec3(f10, sqrt(clamp(1.0 + dot(vec2(1.0) - f9, f10), 0.0, 1.0))), vec3(clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0)).y));
    vec4 f12 = texture2D(SpecularMapTexture, VARYING0);
    float f13 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f14 = VARYING6.xyz * f13;
    vec3 f15 = VARYING5.xyz * f13;
    vec3 f16 = normalize(((f14 * f11.x) + ((cross(f15, f14) * VARYING6.w) * f11.y)) + (f15 * f11.z));
    vec3 f17 = f8.xyz;
    vec3 f18 = f17 * f17;
    vec4 f19 = f8;
    f19.x = f18.x;
    vec4 f20 = f19;
    f20.y = f18.y;
    vec4 f21 = f20;
    f21.z = f18.z;
    float f22 = length(VARYING4.xyz);
    vec3 f23 = VARYING4.xyz / vec3(f22);
    float f24 = CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0);
    float f25 = 0.08900000154972076416015625 + (f12.y * 0.9110000133514404296875);
    float f26 = f12.x * f24;
    vec3 f27 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f28 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f29 = VARYING3.yzx - (VARYING3.yzx * f28);
    vec4 f30 = vec4(clamp(f28, 0.0, 1.0));
    vec4 f31 = mix(texture3D(LightMapTexture, f29), vec4(0.0), f30);
    vec4 f32 = mix(texture3D(LightGridSkylightTexture, f29), vec4(1.0), f30);
    vec4 f33 = texture2D(ShadowMapTexture, f27.xy);
    float f34 = f27.z;
    vec3 f35 = -CB0[16].xyz;
    float f36 = dot(f16, f35) * ((1.0 - ((step(f33.x, f34) * clamp(CB0[29].z + (CB0[29].w * abs(f34 - 0.5)), 0.0, 1.0)) * f33.y)) * f32.y);
    vec3 f37 = normalize(f23 + f35);
    float f38 = clamp(f36, 0.0, 1.0);
    float f39 = f25 * f25;
    float f40 = max(0.001000000047497451305389404296875, dot(f16, f37));
    float f41 = dot(f35, f37);
    float f42 = 1.0 - f41;
    float f43 = f42 * f42;
    float f44 = (f43 * f43) * f42;
    vec3 f45 = vec3(f44) + (mix(vec3(0.039999999105930328369140625), f21.xyz, vec3(f26)) * (1.0 - f44));
    float f46 = f39 * f39;
    float f47 = (((f40 * f46) - f40) * f40) + 1.0;
    float f48 = 1.0 - f26;
    vec3 f49 = ((((((vec3(f48) - (f45 * (f24 * f48))) * CB0[15].xyz) * f38) + (CB0[17].xyz * (f48 * clamp(-f36, 0.0, 1.0)))) + (min((f31.xyz * (f31.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f32.x)), vec3(CB0[21].w)) * 1.0)) * f21.xyz) + (((f45 * (((f46 + (f46 * f46)) / (((f47 * f47) * ((f41 * 3.0) + 0.5)) * ((f40 * 0.75) + 0.25))) * f38)) * CB0[15].xyz) * 1.0);
    vec4 f50 = vec4(0.0);
    f50.x = f49.x;
    vec4 f51 = f50;
    f51.y = f49.y;
    vec4 f52 = f51;
    f52.z = f49.z;
    float f53 = f8.w;
    vec4 f54 = f52;
    f54.w = f53;
    vec3 f55 = -f23;
    vec3 f56 = f55 * f55;
    bvec3 f57 = lessThan(f55, vec3(0.0));
    vec3 f58 = vec3(f57.x ? f56.x : vec3(0.0).x, f57.y ? f56.y : vec3(0.0).y, f57.z ? f56.z : vec3(0.0).z);
    vec3 f59 = f56 - f58;
    vec3 f60 = (((((CB0[34].xyz * f59.x) + (CB0[36].xyz * f59.y)) + (CB0[38].xyz * f59.z)) + (CB0[35].xyz * f58.x)) + (CB0[37].xyz * f58.y)) + (CB0[39].xyz * f58.z);
    bvec3 f61 = bvec3(!(CB0[18].w == 0.0));
    vec3 f62 = mix(vec3(f61.x ? CB0[19].xyz.x : f60.x, f61.y ? CB0[19].xyz.y : f60.y, f61.z ? CB0[19].xyz.z : f60.z), f54.xyz, vec3(clamp(exp2((CB0[18].z * f22) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f63 = f54;
    f63.x = f62.x;
    vec4 f64 = f63;
    f64.y = f62.y;
    vec4 f65 = f64;
    f65.z = f62.z;
    vec3 f66 = sqrt(clamp(f65.xyz * CB0[20].y, vec3(0.0), vec3(1.0))) + vec3((-0.00048828125) + (0.0009765625 * fract(52.98291778564453125 * fract(dot(gl_FragCoord.xy, vec2(0.067110560834407806396484375, 0.005837149918079376220703125))))));
    vec4 f67 = f65;
    f67.x = f66.x;
    vec4 f68 = f67;
    f68.y = f66.y;
    vec4 f69 = f68;
    f69.z = f66.z;
    vec4 f70 = f69;
    f70.w = f53;
    gl_FragData[0] = f70;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$SpecularMapTexture=s5
