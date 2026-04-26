The R15plus bone schema currently enforces a specific hierarchy, but is still flexible as any subset of the joints is acceptable. 
This check is not about Hrd/Drd. It is about the datamodel hierarchy being pre-defined, which may be based on Hrd/Drd properties.

We will ensure that:
    1. Any instance inside of a bone tree is predefined in the HRD or DRD mappings
    2. All bones that exist have the full hierarchy structure leading to them
    3. Attachments are placed in the deepest available ancestor bone or part

If there is no HRD, we simply ensure there are no bones. 