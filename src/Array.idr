module Array

mkArray : Primitive a => List a -> IO (Ptr a)
mkArray = 
