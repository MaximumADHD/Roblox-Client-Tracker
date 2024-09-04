#version 110

uniform sampler2D geomMapTexture;
uniform sampler2D mapTexture;

varying vec2 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;

void main()
{
    vec4 f0 = texture2D(geomMapTexture, VARYING0);
    vec4 f1 = texture2D(mapTexture, VARYING0);
    vec4 f2 = texture2D(mapTexture, VARYING1.xy);
    vec4 f3 = texture2D(mapTexture, VARYING1.zw);
    vec4 f4 = texture2D(mapTexture, VARYING2.xy);
    vec4 f5 = texture2D(mapTexture, VARYING2.zw);
    float f6 = f0.x;
    bvec4 f7 = lessThan(abs(vec4(f2.y, f3.y, f4.y, f5.y) - vec4(f6)), vec4(0.0007999999797903001308441162109375));
    vec4 f8 = vec4(f7.x ? vec4(1.0).x : vec4(0.0).x, f7.y ? vec4(1.0).y : vec4(0.0).y, f7.z ? vec4(1.0).z : vec4(0.0).z, f7.w ? vec4(1.0).w : vec4(0.0).w);
    float f9 = dot(f8, vec4(1.0));
    float f10 = f0.y;
    float f11 = ((1.0 - f10) * (((abs(f1.y - f6) * f9) > 3.9999998989515006542205810546875e-05) ? (dot(vec4(f2.x, f3.x, f4.x, f5.x), f8) / f9) : f1.x)) + f10;
    gl_FragData[0] = vec4(f11, f11, f11, 1.0);
}

//$$geomMapTexture=s3
//$$mapTexture=s2
