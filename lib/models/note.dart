//! Define the model class Note here

class Note {
String title;
String subtitle;

Note(this.title,this.subtitle);
Note.copy(Note from):this(from.title,from.subtitle);

update(Note n){
  title=n.title;
  subtitle=n.subtitle;
}

}
