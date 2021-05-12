# Once upon a time...

class Vampire:
  def __init__(self, props):
    self.location = props['location']
    self.birthDate = props['birthDate']
    self.deathDate = props['deathDate']
    self.weaknesses = props['weaknesses']

  def get_age(self):
    return self.calc_age()

  def calc_age(self):
    return self.deathDate - self.birthDate

# ...there was a guy named Vlad

Dracula = Vampire({
  'location': 'Transylvania',
  'birthDate': 1428,
  'deathDate': 1476,
  'weaknesses': ['Sunlight', 'Garlic']
})