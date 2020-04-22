#version 150

uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec4 f0 = texture(DiffuseMapTexture, VARYING0);
    vec3 f1 = f0.xyz;
    float f2 = f0.w;
    _entryPointOutput = vec4((f1 * f1).xyz * f2, f2);
}

//$$DiffuseMapTexture=s0
