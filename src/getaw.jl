#
# Get atomic weigth from atom representation
#

function getaw(atom; awdict::Dict = atomic_weight)
    return awdict[lowercase(atom)]
end