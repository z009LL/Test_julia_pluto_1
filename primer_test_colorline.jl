### A Pluto.jl notebook ###
# v0.19.40

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local iv = try Base.loaded_modules[Base.PkgId(Base.UUID("6e696c72-6542-2067-7265-42206c756150"), "AbstractPlutoDingetjes")].Bonds.initial_value catch; b -> missing; end
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : iv(el)
        el
    end
end

# ╔═╡ b8c0c520-e8e5-11ee-33c1-33e198893006
# ╠═╡ show_logs = false
begin
	using Pkg
	Pkg.add("SafeTensors")
	Pkg.add("Flux")
	Pkg.add("PlutoUI")
end

# ╔═╡ 1598f4aa-0a16-4b7d-88fd-b7bb77a91fcd
begin
	using Flux
	using SafeTensors
	using PlutoUI
end

# ╔═╡ 4ec21017-3607-4313-be31-858912bf8190
function mandelbrot(a)
    z = 0
    for i=1:50
        z = z^2 + a
    end
    return z
end

# ╔═╡ c49bb68d-beb0-4e3b-81b4-3631fb221c85
for y=1.0:-0.05:-1.0
    for x=-2.0:0.0315:0.5
        abs(mandelbrot(complex(x, y))) < 2 ? print("*") : print(" ")
    end
    println()
end

# ╔═╡ 3f98cffc-1a86-465e-987f-ad8a1d957118
@bind x Slider(5:15)

# ╔═╡ b446f391-a52f-4d9b-89d5-b15794f904ec
x

# ╔═╡ f17a5314-45af-4e97-9092-1c7bbab4a805
@bind z CheckBox()

# ╔═╡ a4d90beb-63ce-4d66-858e-f43827508711
z

# ╔═╡ Cell order:
# ╠═b8c0c520-e8e5-11ee-33c1-33e198893006
# ╠═1598f4aa-0a16-4b7d-88fd-b7bb77a91fcd
# ╠═4ec21017-3607-4313-be31-858912bf8190
# ╠═c49bb68d-beb0-4e3b-81b4-3631fb221c85
# ╠═3f98cffc-1a86-465e-987f-ad8a1d957118
# ╠═b446f391-a52f-4d9b-89d5-b15794f904ec
# ╠═f17a5314-45af-4e97-9092-1c7bbab4a805
# ╠═a4d90beb-63ce-4d66-858e-f43827508711
