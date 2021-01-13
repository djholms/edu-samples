name = 'HoLmS'
age = 35
height = 175 #cm
weight = 85 # kg
eyes = 'Brown'
teeth = 'White'
hair = 'Dark'

print (f"Let's talk about {name}")
print (f"He's {height} cm tall")
print (f"He's {weight} kg heavy")
print (f"Actually that's not too heavy")
print (f"He's got {eyes} eyes and {hair} hair")
print (f"His teeth are useally {teeth} depending on the coffee")

total = age + height + weight
print (f"If I add {age}, {height} and {weight} I get {total}")

kg_to_lbs = 2.20462
cm_to_inch = 0.393701

height_inch = height * cm_to_inch
weight_lbs = weight * cm_to_inch

print (f"By the way, he's height is {round(height_inch,2)} inches and weight is {round(weight_lbs,2)} lbs")