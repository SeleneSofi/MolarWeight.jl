module MolarWeight

    # Atomic weight data collection
    include("Data.jl")

    # Internal functions
    include("getaw.jl")
    include("askmform.jl")

    # Exported functions
    include("molarweght.jl")
    export molarweight

end
