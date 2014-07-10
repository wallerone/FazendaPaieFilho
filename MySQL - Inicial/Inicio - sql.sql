
CREATE TABLE vacina (
                id_vacina INT NOT NULL,
                periodo_inicio_da_vacinacao DATE NOT NULL,
                periodo_fim_da_vacinacao DATE NOT NULL,
                nome_vacina VARCHAR NOT NULL,
                PRIMARY KEY (id_vacina)
);


CREATE TABLE animal (
                id_animal INT NOT NULL,
                nome_animal VARCHAR NOT NULL,
                raca_animal VARCHAR NOT NULL,
                sexo_animal VARCHAR NOT NULL,
                data_de_nascimento_animal DATE NOT NULL,
                PRIMARY KEY (id_animal)
);


CREATE TABLE vacinacao (
                id_vacinacao INT NOT NULL,
                id_vacina INT NOT NULL,
                id_animal INT NOT NULL,
                PRIMARY KEY (id_vacinacao, id_vacina, id_animal)
);


ALTER TABLE vacinacao ADD CONSTRAINT vacina_vacinacao_fk
FOREIGN KEY (id_vacina)
REFERENCES vacina (id_vacina)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE vacinacao ADD CONSTRAINT animal_vacinacao_fk
FOREIGN KEY (id_animal)
REFERENCES animal (id_animal)
ON DELETE NO ACTION
ON UPDATE NO ACTION;
