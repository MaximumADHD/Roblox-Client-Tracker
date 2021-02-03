#version 150

uniform sampler2D DiffuseMapTexture;

in vec3 VARYING0;
in vec2 VARYING1;

void main()
{
    if ((texture(DiffuseMapTexture, VARYING0.xy).w * VARYING0.z) < 0.2520000040531158447265625)
    {
        discard;
    }
    gl_FragDepth = (clamp(VARYING1.x, 0.0, 1.0) * 0.5) + 0.5;
}

//$$DiffuseMapTexture=s3
