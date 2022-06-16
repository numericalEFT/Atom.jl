using Atom
using Documenter

DocMeta.setdocmeta!(Atom, :DocTestSetup, :(using Atom); recursive=true)

makedocs(;
    modules=[Atom],
    authors="Kun Chen",
    repo="https://github.com/numericalEFT/Atom.jl/blob/{commit}{path}#{line}",
    sitename="Atom.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://numericaleft.github.io/Atom.jl",
        assets=String[]
    ),
    pages=[
        "Home" => "index.md",
    ]
)

deploydocs(;
    repo="github.com/numericalEFT/Atom.jl",
    devbranch="master"
)
