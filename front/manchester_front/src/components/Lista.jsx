import { PacienteHistorico } from "./PacienteHistorico";

import styles from "./Lista.module.css"


export const Lista = ({dados}) => {
  
  return (
    <div className={styles.main}>
      <div className={styles.title}>
        <h1>Historico de Pacientes</h1>
      </div>
      {dados.map((paciente, index) => (
        <PacienteHistorico key={index} data={paciente} />
      ))}
    </div>
  );
};
