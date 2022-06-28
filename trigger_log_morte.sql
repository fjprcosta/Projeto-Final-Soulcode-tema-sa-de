--create table if not exists Log(
--	codlog serial,
	--descricaolog varchar (45) not null,
	--constraint log_pk primary key (codlog)
--);

select * from Log
-------------------------------------------------------
CREATE OR REPLACE FUNCTION morte_log1()
	RETURNS TRIGGER AS $$
	BEGIN

	IF(TG_OP = 'INSERT') THEN
	  INSERT INTO log (descricaolog) values
	  ('Novo Registro 2017: '||new.CONTADOR);
	  RETURN NEW;
	  END IF;
	RETURN Null; 
END;
$$ LANGUAGE plpgsql;
---------------------------------------------------------
CREATE OR REPLACE FUNCTION morte_log2()
	RETURNS TRIGGER AS $$
	BEGIN

	IF(TG_OP = 'INSERT') THEN
	  INSERT INTO log (descricaolog) values
	  ('Novo Registro 2018: '||new.CONTADOR);
	  RETURN NEW;
	  END IF;
	RETURN Null; 
END;
$$ LANGUAGE plpgsql;
---------------------------------------------
CREATE OR REPLACE FUNCTION morte_log3()
	RETURNS TRIGGER AS $$
	BEGIN

	IF(TG_OP = 'INSERT') THEN
	  INSERT INTO log (descricaolog) values
	  ('Novo Registro 2019: '||new.CONTADOR);
	  RETURN NEW;
	  END IF;
	RETURN Null; 
END;
$$ LANGUAGE plpgsql;
-------------------------------------------------
CREATE OR REPLACE FUNCTION morte_log4()
	RETURNS TRIGGER AS $$
	BEGIN

	IF(TG_OP = 'INSERT') THEN
	  INSERT INTO log (descricaolog) values
	  ('Novo Registro 2020: '||new.CONTADOR);
	  RETURN NEW;
	  END IF;
	RETURN Null; 
END;
$$ LANGUAGE plpgsql;
-------------------------------------------------------	
	CREATE TRIGGER log_morte1 AFTER insert ON sim2017
FOR EACH ROW EXECUTE PROCEDURE morte_log1();
-------------------------------------------------------
	CREATE TRIGGER log_morte2 AFTER insert ON sim2018
FOR EACH ROW EXECUTE PROCEDURE morte_log2();
-------------------------------------------------------
	CREATE TRIGGER log_morte3 AFTER insert ON sim2019
FOR EACH ROW EXECUTE PROCEDURE morte_log3();
-------------------------------------------------------
	CREATE TRIGGER log_morte4 AFTER insert ON sim2020
FOR EACH ROW EXECUTE PROCEDURE morte_log4();