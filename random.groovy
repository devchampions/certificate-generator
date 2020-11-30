
Random rng = new Random()

(1..20).each {
  println(
    (1..10).
      collect { rng.nextInt(36) }.
      collect { it <= 9 ? it + 48 : it + 65 - 10 }.
      collect { it as char }.
      join()
  )
}




