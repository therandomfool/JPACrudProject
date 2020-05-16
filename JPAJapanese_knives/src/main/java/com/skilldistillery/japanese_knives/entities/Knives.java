package com.skilldistillery.japanese_knives.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Knives {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name="type")
	private String name;

	private String maker;

	private String construction;

	private String steel;

	private String cladding;

	private String handle;

	private String edge;

	private String weight;

	@Column(name = "blade_length")
	private String bladeLength;

	@Column(name = "total_length")
	private String totalLength;

	@Column(name = "spine_thickness")
	private String spineThickness;

	@Column(name = "blade_height")
	private String bladeHeight;

	private String description;

	@Column(name = "img_link")
	private String imgLink;

//	  methods

	public Knives() {
		super();
	}
	
	public Knives(int id, String name, String maker, String construction, String steel, String cladding, String handle,
			String edge, String weight, String bladeLength, String totalLength, String spineThickness,
			String bladeHeight, String description, String imgLink) {
		super();
		this.id = id;
		this.name = name;
		this.maker = maker;
		this.construction = construction;
		this.steel = steel;
		this.cladding = cladding;
		this.handle = handle;
		this.edge = edge;
		this.weight = weight;
		this.bladeLength = bladeLength;
		this.totalLength = totalLength;
		this.spineThickness = spineThickness;
		this.bladeHeight = bladeHeight;
		this.description = description;
		this.imgLink = imgLink;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Knives(int id, String name) {
		super();
		this.id = id;
		this.name = name;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Knives [id=");
		builder.append(id);
		builder.append(", name=");
		builder.append(name);
		builder.append(", maker=");
		builder.append(maker);
		builder.append(", construction=");
		builder.append(construction);
		builder.append(", steel=");
		builder.append(steel);
		builder.append(", cladding=");
		builder.append(cladding);
		builder.append(", handle=");
		builder.append(handle);
		builder.append(", edge=");
		builder.append(edge);
		builder.append(", weight=");
		builder.append(weight);
		builder.append(", bladeLength=");
		builder.append(bladeLength);
		builder.append(", totalLength=");
		builder.append(totalLength);
		builder.append(", spineThickness=");
		builder.append(spineThickness);
		builder.append(", bladeHeight=");
		builder.append(bladeHeight);
		builder.append(", description=");
		builder.append(description);
		builder.append(", imgLink=");
		builder.append(imgLink);
		builder.append("]");
		return builder.toString();
	}

	public String getMaker() {
		return maker;
	}

	public void setMaker(String maker) {
		this.maker = maker;
	}

	public String getConstruction() {
		return construction;
	}

	public void setConstruction(String construction) {
		this.construction = construction;
	}

	public String getSteel() {
		return steel;
	}

	public void setSteel(String steel) {
		this.steel = steel;
	}

	public String getCladding() {
		return cladding;
	}

	public void setCladding(String cladding) {
		this.cladding = cladding;
	}

	public String getHandle() {
		return handle;
	}

	public void setHandle(String handle) {
		this.handle = handle;
	}

	public String getEdge() {
		return edge;
	}

	public void setEdge(String edge) {
		this.edge = edge;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public String getBladeLength() {
		return bladeLength;
	}

	public void setBladeLength(String bladeLength) {
		this.bladeLength = bladeLength;
	}

	public String getTotalLength() {
		return totalLength;
	}

	public void setTotalLength(String totalLength) {
		this.totalLength = totalLength;
	}

	public String getSpineThickness() {
		return spineThickness;
	}

	public void setSpineThickness(String spineThickness) {
		this.spineThickness = spineThickness;
	}

	public String getBladeHeight() {
		return bladeHeight;
	}

	public void setBladeHeight(String bladeHeight) {
		this.bladeHeight = bladeHeight;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImgLink() {
		return imgLink;
	}

	public void setImgLink(String imgLink) {
		this.imgLink = imgLink;
	}



}
