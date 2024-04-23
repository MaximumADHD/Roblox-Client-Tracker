#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <SCExtraData.h>
#include <SCLayerData.h>
uniform vec4 CB0[57];
uniform vec4 CB3[1];
uniform vec4 CB5[189];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D AlbedoMapTexture;

varying vec4 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec3 VARYING4;
varying vec4 VARYING5;
varying vec3 VARYING6;
varying vec3 VARYING7;
varying vec3 VARYING8;

void main()
{
    vec4 f0 = (fract(VARYING1) * CB3[0].xy.xyxy) + VARYING2;
    vec4 f1 = texture2D(AlbedoMapTexture, f0.xy);
    vec4 f2 = texture2D(AlbedoMapTexture, f0.zw);
    vec4 f3 = texture2D(AlbedoMapTexture, (fract(VARYING3.xy) * CB3[0].xy) + VARYING3.zw);
    int f4 = int(VARYING8.x + 0.5);
    int f5 = int(VARYING8.y + 0.5);
    int f6 = int(VARYING8.z + 0.5);
    vec3 f7;
    if (!(CB5[f4 * 3 + 2].w == 0.0))
    {
        f7 = (mix(vec3(1.0), CB5[f4 * 3 + 2].xyz, vec3(f1.w)) * f1.xyz) * VARYING0.x;
    }
    else
    {
        vec2 f8 = f1.xz - vec2(0.5);
        float f9 = f8.x;
        float f10 = f8.y;
        float f11 = CB5[f4 * 3 + 2].x * f1.y;
        float f12 = (CB5[f4 * 3 + 2].y * f9) - (CB5[f4 * 3 + 2].z * f10);
        float f13 = (CB5[f4 * 3 + 2].z * f9) + (CB5[f4 * 3 + 2].y * f10);
        float f14 = f11 - f13;
        f7 = (vec3(f14, f11, f14) + (vec3(f12, f13, f12) * vec3(1.0, 1.0, -1.0))) * VARYING0.x;
    }
    vec3 f15;
    if (!(CB5[f5 * 3 + 2].w == 0.0))
    {
        f15 = f7 + ((mix(vec3(1.0), CB5[f5 * 3 + 2].xyz, vec3(f2.w)) * f2.xyz) * VARYING0.y);
    }
    else
    {
        vec2 f16 = f2.xz - vec2(0.5);
        float f17 = f16.x;
        float f18 = f16.y;
        float f19 = CB5[f5 * 3 + 2].x * f2.y;
        float f20 = (CB5[f5 * 3 + 2].y * f17) - (CB5[f5 * 3 + 2].z * f18);
        float f21 = (CB5[f5 * 3 + 2].z * f17) + (CB5[f5 * 3 + 2].y * f18);
        float f22 = f19 - f21;
        f15 = f7 + ((vec3(f22, f19, f22) + (vec3(f20, f21, f20) * vec3(1.0, 1.0, -1.0))) * VARYING0.y);
    }
    vec3 f23;
    if (!(CB5[f6 * 3 + 2].w == 0.0))
    {
        f23 = f15 + ((mix(vec3(1.0), CB5[f6 * 3 + 2].xyz, vec3(f3.w)) * f3.xyz) * VARYING0.z);
    }
    else
    {
        vec2 f24 = f3.xz - vec2(0.5);
        float f25 = f24.x;
        float f26 = f24.y;
        float f27 = CB5[f6 * 3 + 2].x * f3.y;
        float f28 = (CB5[f6 * 3 + 2].y * f25) - (CB5[f6 * 3 + 2].z * f26);
        float f29 = (CB5[f6 * 3 + 2].z * f25) + (CB5[f6 * 3 + 2].y * f26);
        float f30 = f27 - f29;
        f23 = f15 + ((vec3(f30, f27, f30) + (vec3(f28, f29, f28) * vec3(1.0, 1.0, -1.0))) * VARYING0.z);
    }
    float f31 = clamp(dot(step(CB0[24].xyz, abs(VARYING4 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f32 = VARYING4.yzx - (VARYING4.yzx * f31);
    vec4 f33 = vec4(clamp(f31, 0.0, 1.0));
    vec4 f34 = mix(texture3D(LightMapTexture, f32), vec4(0.0), f33);
    vec4 f35 = mix(texture3D(LightGridSkylightTexture, f32), vec4(1.0), f33);
    vec4 f36 = texture2D(ShadowMapTexture, VARYING5.xy);
    vec3 f37 = (min((f34.xyz * (f34.w * 120.0)) + (CB0[13].xyz + (CB0[14].xyz * f35.x)), vec3(CB0[21].w)) + (VARYING6 * ((1.0 - ((step(f36.x, VARYING5.z) * clamp(CB0[29].z + (CB0[29].w * abs(VARYING5.z - 0.5)), 0.0, 1.0)) * f36.y)) * f35.y))) * (f23 * f23);
    vec4 f38 = vec4(0.0);
    f38.x = f37.x;
    vec4 f39 = f38;
    f39.y = f37.y;
    vec4 f40 = f39;
    f40.z = f37.z;
    vec4 f41 = f40;
    f41.w = 1.0;
    vec3 f42 = normalize(-VARYING7);
    vec3 f43 = f42 * f42;
    bvec3 f44 = lessThan(f42, vec3(0.0));
    vec3 f45 = vec3(f44.x ? f43.x : vec3(0.0).x, f44.y ? f43.y : vec3(0.0).y, f44.z ? f43.z : vec3(0.0).z);
    vec3 f46 = f43 - f45;
    vec3 f47 = (((((CB0[34].xyz * f46.x) + (CB0[36].xyz * f46.y)) + (CB0[38].xyz * f46.z)) + (CB0[35].xyz * f45.x)) + (CB0[37].xyz * f45.y)) + (CB0[39].xyz * f45.z);
    bvec3 f48 = bvec3(!(CB0[18].w == 0.0));
    vec3 f49 = mix(vec3(f48.x ? CB0[19].xyz.x : f47.x, f48.y ? CB0[19].xyz.y : f47.y, f48.z ? CB0[19].xyz.z : f47.z), f41.xyz, vec3(clamp(exp2((CB0[18].z * VARYING5.w) + CB0[18].x) - CB0[18].w, 0.0, 1.0)));
    vec4 f50 = f41;
    f50.x = f49.x;
    vec4 f51 = f50;
    f51.y = f49.y;
    vec4 f52 = f51;
    f52.z = f49.z;
    vec3 f53 = sqrt(clamp(f52.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f54 = f52;
    f54.x = f53.x;
    vec4 f55 = f54;
    f55.y = f53.y;
    vec4 f56 = f55;
    f56.z = f53.z;
    gl_FragData[0] = f56;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$AlbedoMapTexture=s0
