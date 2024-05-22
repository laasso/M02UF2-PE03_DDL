import pandas as pd
import random
import string

def generate_dni():
    numbers = ''.join(random.choices(string.digits, k=8))  # Generar 8 dígitos aleatorios
    letter = random.choice(string.ascii_uppercase)  # Elegir una letra aleatoria
    return numbers + letter

df = pd.read_csv('../DATA/personal.csv')

df['dni'] = [generate_dni() for _ in range(len(df))]

cols = df.columns.tolist()
cols = ['dni'] + [col for col in cols if col != 'dni']
df = df[cols]

df.to_csv('../DATA/personal.csv', index=False)
