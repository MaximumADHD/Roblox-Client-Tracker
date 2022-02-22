#version 110

uniform sampler2D DiffuseMapTexture;

varying vec2 VARYING0;

void main()
{
    vec4 f0 = texture2D(DiffuseMapTexture, VARYING0);
    vec3 f1 = f0.xyz;
    vec3 f2 = f1 * f1;
    vec4 f3 = f0;
    f3.x = f2.x;
    vec4 f4 = f3;
    f4.y = f2.y;
    vec4 f5 = f4;
    f5.z = f2.z;
    float f6 = f0.w;
    gl_FragData[0] = vec4(f5.xyz * f6, f6);
}

//$$DiffuseMapTexture=s0
