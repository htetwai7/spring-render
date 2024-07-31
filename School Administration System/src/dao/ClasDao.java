package dao;

import java.util.List;

import dto.Clas;

public interface ClasDao {
	public void save(Clas clas);

	public List<Clas> listClas();

	public Clas getClassId(int class_id);

	public void updateClas(Clas clas);
}
