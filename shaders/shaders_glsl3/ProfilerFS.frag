#version 150

uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in vec4 VARYING1;
out vec4 _entryPointOutput;

void main()
{
    float f0 = texture(DiffuseMapTexture, VARYING0).x * VARYING1.w;
    _entryPointOutput = vec4(VARYING1.xyz * f0, f0 + (texture(DiffuseMapTexture, VARYING0 + vec2(-0.00048828125)).x * (1.0 - f0)));
}

//$$DiffuseMapTexture=s0
