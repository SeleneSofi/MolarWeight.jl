#
# Calculate molar weight from molecular formula
#

function molarweight(mform::String)
    reg = r"(?<atom>[a-zA-Z]+)(?<index>[0-9]+)"
    cs = 1
    m = match(reg, mform, cs)
    mw = 0.
    while m ≠ nothing
        aw = getaw(m[:atom])
        idx = parse(Int64, m[:index])
        mw += idx*aw
        cs += length(m.match)
        m = match(reg, mform, cs)
    end
    println("$mw g.mol⁻¹")
    return mw
end

function molarweight()
    mform = askmform()
    molarweight(mform)
end