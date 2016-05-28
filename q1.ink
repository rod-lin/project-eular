#! /usr/bin/ink

# Multiples of 3 and 5

let sumof = fn (num, range) {
	let c = (range % num) && ((range / num).floor()) || (range / num - 1)
	(num < range) && (num * (c + 1) * c / 2) || 0
}

let solve = fn (n1, n2, range) {
	sumof(n1, range) + sumof(n2, range) - sumof(n1 * n2, range)
}

p(solve(3, 5, 1000))
