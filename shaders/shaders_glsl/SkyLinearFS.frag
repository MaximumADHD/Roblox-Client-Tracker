#version 110

uniform sampler2D DiffuseMapTexture;

varying vec2 VARYING0;

void main()
{
    vec4 f0 = texture2D(DiffuseMapTexture, VARYING0);
    vec3 f1 = f0.xyz;
    float f2 = f0.w;
    gl_FragData[0] = vec4((f1 * f1).xyz * f2, f2);
}

//$$DiffuseMapTexture=s0
